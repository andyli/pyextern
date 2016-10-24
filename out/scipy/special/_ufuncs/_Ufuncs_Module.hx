/* This file is generated, do not edit! */
package scipy.special._ufuncs;
@:pythonImport("scipy.special._ufuncs") extern class _Ufuncs_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_cospi(x[, out])
		
		Internal function, do not use.
	**/
	static public function _cospi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_ellip_harm(x1, x2, x3, x4, x5, x6, x7[, out])
		
		Internal function, use `ellip_harm` instead.
	**/
	static public function _ellip_harm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_gammaln(x[, out])
		
		Internal function, use ``gammaln`` instead.
	**/
	static public function _gammaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_lambertw(x1, x2, x3[, out])
		
		Internal function, use `lambertw` instead.
	**/
	static public function _lambertw(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_sinpi(x[, out])
		
		Internal function, do not use.
	**/
	static public function _sinpi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_in(x1, x2[, out])
		
		Internal function, use `spherical_in` instead.
	**/
	static public function _spherical_in(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_in_d(x1, x2[, out])
		
		Internal function, use `spherical_in` instead.
	**/
	static public function _spherical_in_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_jn(x1, x2[, out])
		
		Internal function, use `spherical_jn` instead.
	**/
	static public function _spherical_jn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_jn_d(x1, x2[, out])
		
		Internal function, use `spherical_jn` instead.
	**/
	static public function _spherical_jn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_kn(x1, x2[, out])
		
		Internal function, use `spherical_kn` instead.
	**/
	static public function _spherical_kn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_kn_d(x1, x2[, out])
		
		Internal function, use `spherical_kn` instead.
	**/
	static public function _spherical_kn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_yn(x1, x2[, out])
		
		Internal function, use `spherical_yn` instead.
	**/
	static public function _spherical_yn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_yn_d(x1, x2[, out])
		
		Internal function, use `spherical_yn` instead.
	**/
	static public function _spherical_yn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_struve_asymp_large_z(x1, x2, x3[, out1, out2])
		
		_struve_asymp_large_z(v, z, is_h)
		
		Internal function for testing `struve` & `modstruve`
		
		Evaluates using asymptotic expansion
		
		Returns
		-------
		v, err
	**/
	static public function _struve_asymp_large_z(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_struve_bessel_series(x1, x2, x3[, out1, out2])
		
		_struve_bessel_series(v, z, is_h)
		
		Internal function for testing `struve` & `modstruve`
		
		Evaluates using Bessel function series
		
		Returns
		-------
		v, err
	**/
	static public function _struve_bessel_series(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_struve_power_series(x1, x2, x3[, out1, out2])
		
		_struve_power_series(v, z, is_h)
		
		Internal function for testing `struve` & `modstruve`
		
		Evaluates using power series
		
		Returns
		-------
		v, err
	**/
	static public function _struve_power_series(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_zeta(x1, x2[, out])
		
		_zeta(x, q)
		
		Internal function, Hurwitz zeta.
	**/
	static public function _zeta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		airy(x[, out1, out2, out3, out4])
		
		airy(z)
		
		Airy functions and their derivatives.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		
		Returns
		-------
		Ai, Aip, Bi, Bip : ndarrays
		    Airy functions Ai and Bi, and their derivatives Aip and Bip.
		
		Notes
		-----
		The Airy functions Ai and Bi are two independent solutions of
		
		.. math:: y''(x) = x y(x).
		
		For real `z` in [-10, 10], the computation is carried out by calling
		the Cephes [1]_ `airy` routine, which uses power series summation
		for small `z` and rational minimax approximations for large `z`.
		
		Outside this range, the AMOS [2]_ `zairy` and `zbiry` routines are
		employed.  They are computed using power series for :math:`|z| < 1` and
		the following relations to modified Bessel functions for larger `z`
		(where :math:`t \equiv 2 z^{3/2}/3`):
		
		.. math::
		
		    Ai(z) = \frac{1}{\pi \sqrt{3}} K_{1/3}(t)
		
		    Ai'(z) = -\frac{z}{\pi \sqrt{3}} K_{2/3}(t)
		
		    Bi(z) = \sqrt{\frac{z}{3}} \left(I_{-1/3}(t) + I_{1/3}(t) \right)
		
		    Bi'(z) = \frac{z}{\sqrt{3}} \left(I_{-2/3}(t) + I_{2/3}(t)\right)
		
		See also
		--------
		airye : exponentially scaled Airy functions.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
		.. [2] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/.org/amos/
	**/
	static public function airy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		airye(x[, out1, out2, out3, out4])
		
		airye(z)
		
		Exponentially scaled Airy functions and their derivatives.
		
		Scaling::
		
		    eAi  = Ai  * exp(2.0/3.0*z*sqrt(z))
		    eAip = Aip * exp(2.0/3.0*z*sqrt(z))
		    eBi  = Bi  * exp(-abs((2.0/3.0*z*sqrt(z)).real))
		    eBip = Bip * exp(-abs((2.0/3.0*z*sqrt(z)).real))
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		
		Returns
		-------
		eAi, eAip, eBi, eBip : array_like
		    Airy functions Ai and Bi, and their derivatives Aip and Bip
		
		Notes
		-----
		Wrapper for the AMOS [1]_ routines `zairy` and `zbiry`.
		
		See also
		--------
		airy
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function airye(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bdtr(x1, x2, x3[, out])
		
		bdtr(k, n, p)
		
		Binomial distribution cumulative distribution function.
		
		Sum of the terms 0 through `k` of the Binomial probability density.
		
		.. math::
		    \mathrm{bdtr}(k, n, p) = \sum_{j=0}^k {{n}\choose{j}} p^j (1-p)^{n-j}
		
		Parameters
		----------
		k : array_like
		    Number of successes (int).
		n : array_like
		    Number of events (int).
		p : array_like
		    Probability of success in a single event (float).
		
		Returns
		-------
		y : ndarray
		    Probability of `k` or fewer successes in `n` independent events with
		    success probabilities of `p`.
		
		Notes
		-----
		The terms are not summed directly; instead the regularized incomplete beta
		function is employed, according to the formula,
		
		.. math::
		    \mathrm{bdtr}(k, n, p) = I_{1 - p}(n - k, k + 1).
		
		Wrapper for the Cephes [1]_ routine `bdtr`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function bdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bdtrc(x1, x2, x3[, out])
		
		bdtrc(k, n, p)
		
		Binomial distribution survival function.
		
		Sum of the terms `k + 1` through `n` of the binomial probability density,
		
		.. math::
		    \mathrm{bdtrc}(k, n, p) = \sum_{j=k+1}^n {{n}\choose{j}} p^j (1-p)^{n-j}
		
		Parameters
		----------
		k : array_like
		    Number of successes (int).
		n : array_like
		    Number of events (int)
		p : array_like
		    Probability of success in a single event.
		
		Returns
		-------
		y : ndarray
		    Probability of `k + 1` or more successes in `n` independent events
		    with success probabilities of `p`.
		
		See also
		--------
		bdtr
		betainc
		
		Notes
		-----
		The terms are not summed directly; instead the regularized incomplete beta
		function is employed, according to the formula,
		
		.. math::
		    \mathrm{bdtrc}(k, n, p) = I_{p}(k + 1, n - k).
		
		Wrapper for the Cephes [1]_ routine `bdtrc`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function bdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bdtri(x1, x2, x3[, out])
		
		bdtri(k, n, y)
		
		Inverse function to `bdtr` with respect to `p`.
		
		Finds the event probability `p` such that the sum of the terms 0 through
		`k` of the binomial probability density is equal to the given cumulative
		probability `y`.
		
		Parameters
		----------
		k : array_like
		    Number of successes (float).
		n : array_like
		    Number of events (float)
		y : array_like
		    Cumulative probability (probability of `k` or fewer successes in `n`
		    events).
		
		Returns
		-------
		p : ndarray
		    The event probability such that `bdtr(k, n, p) = y`.
		
		See also
		--------
		bdtr
		betaincinv
		
		Notes
		-----
		The computation is carried out using the inverse beta integral function
		and the relation,::
		
		    1 - p = betaincinv(n - k, k + 1, y).
		
		Wrapper for the Cephes [1]_ routine `bdtri`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function bdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bdtrik(x1, x2, x3[, out])
		
		bdtrik(y, n, p)
		
		Inverse function to `bdtr` with respect to `k`.
		
		Finds the number of successes `k` such that the sum of the terms 0 through
		`k` of the Binomial probability density for `n` events with probability
		`p` is equal to the given cumulative probability `y`.
		
		Parameters
		----------
		y : array_like
		    Cumulative probability (probability of `k` or fewer successes in `n`
		    events).
		n : array_like
		    Number of events (float).
		p : array_like
		    Success probability (float).
		
		Returns
		-------
		k : ndarray
		    The number of successes `k` such that `bdtr(k, n, p) = y`.
		
		See also
		--------
		bdtr
		
		Notes
		-----
		Formula 26.5.24 of [1]_ is used to reduce the binomial distribution to the
		cumulative incomplete beta distribution.
		
		Computation of `k` involves a seach for a value that produces the desired
		value of `y`.  The search relies on the monotinicity of `y` with `k`.
		
		Wrapper for the CDFLIB [2]_ Fortran routine `cdfbin`.
		
		References
		----------
		.. [1] Milton Abramowitz and Irene A. Stegun, eds.
		       Handbook of Mathematical Functions with Formulas,
		       Graphs, and Mathematical Tables. New York: Dover, 1972.
		.. [2] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
	**/
	static public function bdtrik(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bdtrin(x1, x2, x3[, out])
		
		bdtrin(k, y, p)
		
		Inverse function to `bdtr` with respect to `n`.
		
		Finds the number of events `n` such that the sum of the terms 0 through
		`k` of the Binomial probability density for events with probability `p` is
		equal to the given cumulative probability `y`.
		
		Parameters
		----------
		k : array_like
		    Number of successes (float).
		y : array_like
		    Cumulative probability (probability of `k` or fewer successes in `n`
		    events).
		p : array_like
		    Success probability (float).
		
		Returns
		-------
		n : ndarray
		    The number of events `n` such that `bdtr(k, n, p) = y`.
		
		See also
		--------
		bdtr
		
		Notes
		-----
		Formula 26.5.24 of [1]_ is used to reduce the binomial distribution to the
		cumulative incomplete beta distribution.
		
		Computation of `n` involves a seach for a value that produces the desired
		value of `y`.  The search relies on the monotinicity of `y` with `n`.
		
		Wrapper for the CDFLIB [2]_ Fortran routine `cdfbin`.
		
		References
		----------
		.. [1] Milton Abramowitz and Irene A. Stegun, eds.
		       Handbook of Mathematical Functions with Formulas,
		       Graphs, and Mathematical Tables. New York: Dover, 1972.
		.. [2] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
	**/
	static public function bdtrin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bei(x[, out])
		
		bei(x)
		
		Kelvin function bei
	**/
	static public function bei(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		beip(x[, out])
		
		beip(x)
		
		Derivative of the Kelvin function `bei`
	**/
	static public function beip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ber(x[, out])
		
		ber(x)
		
		Kelvin function ber.
	**/
	static public function ber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		berp(x[, out])
		
		berp(x)
		
		Derivative of the Kelvin function `ber`
	**/
	static public function berp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		besselpoly(x1, x2, x3[, out])
		
		besselpoly(a, lmb, nu)
		
		Weighted integral of a Bessel function.
		
		.. math::
		
		   \int_0^1 x^\lambda J_\nu(2 a x) \, dx
		
		where :math:`J_\nu` is a Bessel function and :math:`\lambda=lmb`,
		:math:`\nu=nu`.
	**/
	static public function besselpoly(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		beta(x1, x2[, out])
		
		beta(a, b)
		
		Beta function.
		
		::
		
		    beta(a, b) =  gamma(a) * gamma(b) / gamma(a+b)
	**/
	static public function beta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		betainc(x1, x2, x3[, out])
		
		betainc(a, b, x)
		
		Incomplete beta integral.
		
		Compute the incomplete beta integral of the arguments, evaluated
		from zero to `x`::
		
		    gamma(a+b) / (gamma(a)*gamma(b)) * integral(t**(a-1) (1-t)**(b-1), t=0..x).
		
		Notes
		-----
		The incomplete beta is also sometimes defined without the terms
		in gamma, in which case the above definition is the so-called regularized
		incomplete beta. Under this definition, you can get the incomplete beta by
		multiplying the result of the scipy function by beta(a, b).
	**/
	static public function betainc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		betaincinv(x1, x2, x3[, out])
		
		betaincinv(a, b, y)
		
		Inverse function to beta integral.
		
		Compute `x` such that betainc(a, b, x) = y.
	**/
	static public function betaincinv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		betaln(x1, x2[, out])
		
		betaln(a, b)
		
		Natural logarithm of absolute value of beta function.
		
		Computes ``ln(abs(beta(a, b)))``.
	**/
	static public function betaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		binom(x1, x2[, out])
		
		binom(n, k)
		
		Binomial coefficient
	**/
	static public function binom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boxcox(x1, x2[, out])
		
		boxcox(x, lmbda)
		
		Compute the Box-Cox transformation.
		
		The Box-Cox transformation is::
		
		    y = (x**lmbda - 1) / lmbda  if lmbda != 0
		        log(x)                  if lmbda == 0
		
		Returns `nan` if ``x < 0``.
		Returns `-inf` if ``x == 0`` and ``lmbda < 0``.
		
		Parameters
		----------
		x : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		y : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.special import boxcox
		>>> boxcox([1, 4, 10], 2.5)
		array([   0.        ,   12.4       ,  126.09110641])
		>>> boxcox(2, [0, 1, 2])
		array([ 0.69314718,  1.        ,  1.5       ])
	**/
	static public function boxcox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boxcox1p(x1, x2[, out])
		
		boxcox1p(x, lmbda)
		
		Compute the Box-Cox transformation of 1 + `x`.
		
		The Box-Cox transformation computed by `boxcox1p` is::
		
		    y = ((1+x)**lmbda - 1) / lmbda  if lmbda != 0
		        log(1+x)                    if lmbda == 0
		
		Returns `nan` if ``x < -1``.
		Returns `-inf` if ``x == -1`` and ``lmbda < 0``.
		
		Parameters
		----------
		x : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		y : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> from scipy.special import boxcox1p
		>>> boxcox1p(1e-4, [0, 0.5, 1])
		array([  9.99950003e-05,   9.99975001e-05,   1.00000000e-04])
		>>> boxcox1p([0.01, 0.1], 0.25)
		array([ 0.00996272,  0.09645476])
	**/
	static public function boxcox1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		btdtr(x1, x2, x3[, out])
		
		btdtr(a, b, x)
		
		Cumulative density function of the beta distribution.
		
		Returns the integral from zero to `x` of the beta probability density
		function,
		
		.. math::
		    I = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt
		
		where :math:`\Gamma` is the gamma function.
		
		Parameters
		----------
		a : array_like
		    Shape parameter (a > 0).
		b : array_like
		    Shape parameter (b > 0).
		x : array_like
		    Upper limit of integration, in [0, 1].
		
		Returns
		-------
		I : ndarray
		    Cumulative density function of the beta distribution with parameters
		    `a` and `b` at `x`.
		
		See Also
		--------
		betainc
		
		Notes
		-----
		This function is identical to the incomplete beta integral function
		`betainc`.
		
		Wrapper for the Cephes [1]_ routine `btdtr`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function btdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		btdtri(x1, x2, x3[, out])
		
		btdtri(a, b, p)
		
		The `p`-th quantile of the beta distribution.
		
		This function is the inverse of the beta cumulative distribution function,
		`btdtr`, returning the value of `x` for which `btdtr(a, b, x) = p`, or
		
		.. math::
		    p = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt
		
		Parameters
		----------
		a : array_like
		    Shape parameter (`a` > 0).
		b : array_like
		    Shape parameter (`b` > 0).
		p : array_like
		    Cumulative probability, in [0, 1].
		
		Returns
		-------
		x : ndarray
		    The quantile corresponding to `p`.
		
		See Also
		--------
		betaincinv
		btdtr
		
		Notes
		-----
		The value of `x` is found by interval halving or Newton iterations.
		
		Wrapper for the Cephes [1]_ routine `incbi`, which solves the equivalent
		problem of finding the inverse of the incomplete beta integral.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function btdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		btdtria(x1, x2, x3[, out])
		
		btdtria(p, b, x)
		
		Inverse of `btdtr` with respect to `a`.
		
		This is the inverse of the beta cumulative distribution function, `btdtr`,
		considered as a function of `a`, returning the value of `a` for which
		`btdtr(a, b, x) = p`, or
		
		.. math::
		    p = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt
		
		Parameters
		----------
		p : array_like
		    Cumulative probability, in [0, 1].
		b : array_like
		    Shape parameter (`b` > 0).
		x : array_like
		    The quantile, in [0, 1].
		
		Returns
		-------
		a : ndarray
		    The value of the shape parameter `a` such that `btdtr(a, b, x) = p`.
		
		See Also
		--------
		btdtr : Cumulative density function of the beta distribution.
		btdtri : Inverse with respect to `x`.
		btdtrib : Inverse with respect to `b`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfbet`.
		
		The cumulative distribution function `p` is computed using a routine by
		DiDinato and Morris [2]_.  Computation of `a` involves a seach for a value
		that produces the desired value of `p`.  The search relies on the
		monotinicity of `p` with `a`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] DiDinato, A. R. and Morris, A. H.,
		       Algorithm 708: Significant Digit Computation of the Incomplete Beta
		       Function Ratios. ACM Trans. Math. Softw. 18 (1993), 360-373.
	**/
	static public function btdtria(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		btdtrib(x1, x2, x3[, out])
		
		btdtria(a, p, x)
		
		Inverse of `btdtr` with respect to `b`.
		
		This is the inverse of the beta cumulative distribution function, `btdtr`,
		considered as a function of `b`, returning the value of `b` for which
		`btdtr(a, b, x) = p`, or
		
		.. math::
		    p = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt
		
		Parameters
		----------
		a : array_like
		    Shape parameter (`a` > 0).
		p : array_like
		    Cumulative probability, in [0, 1].
		x : array_like
		    The quantile, in [0, 1].
		
		Returns
		-------
		b : ndarray
		    The value of the shape parameter `b` such that `btdtr(a, b, x) = p`.
		
		See Also
		--------
		btdtr : Cumulative density function of the beta distribution.
		btdtri : Inverse with respect to `x`.
		btdtria : Inverse with respect to `a`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfbet`.
		
		The cumulative distribution function `p` is computed using a routine by
		DiDinato and Morris [2]_.  Computation of `b` involves a seach for a value
		that produces the desired value of `p`.  The search relies on the
		monotinicity of `p` with `b`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] DiDinato, A. R. and Morris, A. H.,
		       Algorithm 708: Significant Digit Computation of the Incomplete Beta
		       Function Ratios. ACM Trans. Math. Softw. 18 (1993), 360-373.
	**/
	static public function btdtrib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cbrt(x[, out])
		
		cbrt(x)
		
		Cube root of `x`
	**/
	static public function cbrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chdtr(x1, x2[, out])
		
		chdtr(v, x)
		
		Chi square cumulative distribution function
		
		Returns the area under the left hand tail (from 0 to `x`) of the Chi
		square probability density function with `v` degrees of freedom::
		
		    1/(2**(v/2) * gamma(v/2)) * integral(t**(v/2-1) * exp(-t/2), t=0..x)
	**/
	static public function chdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chdtrc(x1, x2[, out])
		
		chdtrc(v, x)
		
		Chi square survival function
		
		Returns the area under the right hand tail (from `x` to
		infinity) of the Chi square probability density function with `v`
		degrees of freedom::
		
		    1/(2**(v/2) * gamma(v/2)) * integral(t**(v/2-1) * exp(-t/2), t=x..inf)
	**/
	static public function chdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chdtri(x1, x2[, out])
		
		chdtri(v, p)
		
		Inverse to `chdtrc`
		
		Returns the argument x such that ``chdtrc(v, x) == p``.
	**/
	static public function chdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chdtriv(x1, x2[, out])
		
		chdtri(p, x)
		
		Inverse to `chdtr` vs `v`
		
		Returns the argument v such that ``chdtr(v, x) == p``.
	**/
	static public function chdtriv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chndtr(x1, x2, x3[, out])
		
		chndtr(x, df, nc)
		
		Non-central chi square cumulative distribution function
	**/
	static public function chndtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chndtridf(x1, x2, x3[, out])
		
		chndtridf(x, p, nc)
		
		Inverse to `chndtr` vs `df`
	**/
	static public function chndtridf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chndtrinc(x1, x2, x3[, out])
		
		chndtrinc(x, df, p)
		
		Inverse to `chndtr` vs `nc`
	**/
	static public function chndtrinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chndtrix(x1, x2, x3[, out])
		
		chndtrix(p, df, nc)
		
		Inverse to `chndtr` vs `x`
	**/
	static public function chndtrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosdg(x[, out])
		
		cosdg(x)
		
		Cosine of the angle `x` given in degrees.
	**/
	static public function cosdg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosm1(x[, out])
		
		cosm1(x)
		
		cos(x) - 1 for use when `x` is near zero.
	**/
	static public function cosm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cotdg(x[, out])
		
		cotdg(x)
		
		Cotangent of the angle `x` given in degrees.
	**/
	static public function cotdg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dawsn(x[, out])
		
		dawsn(x)
		
		Dawson's integral.
		
		Computes::
		
		    exp(-x**2) * integral(exp(t**2), t=0..x).
		
		See Also
		--------
		wofz, erf, erfc, erfcx, erfi
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-15, 15, num=1000)
		>>> plt.plot(x, special.dawsn(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$dawsn(x)$')
		>>> plt.show()
	**/
	static public function dawsn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ellipe(x[, out])
		
		ellipe(m)
		
		Complete elliptic integral of the second kind
		
		This function is defined as
		
		.. math:: E(m) = \int_0^{\pi/2} [1 - m \sin(t)^2]^{1/2} dt
		
		Parameters
		----------
		m : array_like
		    Defines the parameter of the elliptic integral.
		
		Returns
		-------
		E : ndarray
		    Value of the elliptic integral.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `ellpe`.
		
		For `m > 0` the computation uses the approximation,
		
		.. math:: E(m) \approx P(1-m) - (1-m) \log(1-m) Q(1-m),
		
		where :math:`P` and :math:`Q` are tenth-order polynomials.  For
		`m < 0`, the relation
		
		.. math:: E(m) = E(m/(m - 1)) \sqrt(1-m)
		
		is used.
		
		See Also
		--------
		ellipkm1 : Complete elliptic integral of the first kind, near `m` = 1
		ellipk : Complete elliptic integral of the first kind
		ellipkinc : Incomplete elliptic integral of the first kind
		ellipeinc : Incomplete elliptic integral of the second kind
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function ellipe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ellipeinc(x1, x2[, out])
		
		ellipeinc(phi, m)
		
		Incomplete elliptic integral of the second kind
		
		This function is defined as
		
		.. math:: E(\phi, m) = \int_0^{\phi} [1 - m \sin(t)^2]^{1/2} dt
		
		Parameters
		----------
		phi : array_like
		    amplitude of the elliptic integral.
		
		m : array_like
		    parameter of the elliptic integral.
		
		Returns
		-------
		E : ndarray
		    Value of the elliptic integral.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `ellie`.
		
		Computation uses arithmetic-geometric means algorithm.
		
		See Also
		--------
		ellipkm1 : Complete elliptic integral of the first kind, near `m` = 1
		ellipk : Complete elliptic integral of the first kind
		ellipkinc : Incomplete elliptic integral of the first kind
		ellipe : Complete elliptic integral of the second kind
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function ellipeinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ellipj(x1, x2[, out1, out2, out3, out4])
		
		ellipj(u, m)
		
		Jacobian elliptic functions
		
		Calculates the Jacobian elliptic functions of parameter `m` between
		0 and 1, and real argument `u`.
		
		Parameters
		----------
		m : array_like
		    Parameter.
		u : array_like
		    Argument.
		
		Returns
		-------
		sn, cn, dn, ph : ndarrays
		    The returned functions::
		
		        sn(u|m), cn(u|m), dn(u|m)
		
		    The value `ph` is such that if `u = ellipk(ph, m)`,
		    then `sn(u|m) = sin(ph)` and `cn(u|m) = cos(ph)`.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `ellpj`.
		
		These functions are periodic, with quarter-period on the real axis
		equal to the complete elliptic integral `ellipk(m)`.
		
		Relation to incomplete elliptic integral: If `u = ellipk(phi,m)`, then
		`sn(u|m) = sin(phi)`, and `cn(u|m) = cos(phi)`.  The `phi` is called
		the amplitude of `u`.
		
		Computation is by means of the arithmetic-geometric mean algorithm,
		except when `m` is within 1e-9 of 0 or 1.  In the latter case with `m`
		close to 1, the approximation applies only for `phi < pi/2`.
		
		See also
		--------
		ellipk : Complete elliptic integral of the first kind.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function ellipj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ellipkinc(x1, x2[, out])
		
		ellipkinc(phi, m)
		
		Incomplete elliptic integral of the first kind
		
		This function is defined as
		
		.. math:: K(\phi, m) = \int_0^{\phi} [1 - m \sin(t)^2]^{-1/2} dt
		
		This function is also called `F(phi, m)`.
		
		Parameters
		----------
		phi : array_like
		    amplitude of the elliptic integral
		
		m : array_like
		    parameter of the elliptic integral
		
		Returns
		-------
		K : ndarray
		    Value of the elliptic integral
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `ellik`.  The computation is
		carried out using the arithmetic-geometric mean algorithm.
		
		See Also
		--------
		ellipkm1 : Complete elliptic integral of the first kind, near `m` = 1
		ellipk : Complete elliptic integral of the first kind
		ellipe : Complete elliptic integral of the second kind
		ellipeinc : Incomplete elliptic integral of the second kind
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function ellipkinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ellipkm1(x[, out])
		
		ellipkm1(p)
		
		Complete elliptic integral of the first kind around `m` = 1
		
		This function is defined as
		
		.. math:: K(p) = \int_0^{\pi/2} [1 - m \sin(t)^2]^{-1/2} dt
		
		where `m = 1 - p`.
		
		Parameters
		----------
		p : array_like
		    Defines the parameter of the elliptic integral as `m = 1 - p`.
		
		Returns
		-------
		K : ndarray
		    Value of the elliptic integral.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `ellpk`.
		
		For `p <= 1`, computation uses the approximation,
		
		.. math:: K(p) \approx P(p) - \log(p) Q(p),
		
		where :math:`P` and :math:`Q` are tenth-order polynomials.  The
		argument `p` is used internally rather than `m` so that the logarithmic
		singularity at `m = 1` will be shifted to the origin; this preserves
		maximum accuracy.  For `p > 1`, the identity
		
		.. math:: K(p) = K(1/p)/\sqrt(p)
		
		is used.
		
		See Also
		--------
		ellipk : Complete elliptic integral of the first kind
		ellipkinc : Incomplete elliptic integral of the first kind
		ellipe : Complete elliptic integral of the second kind
		ellipeinc : Incomplete elliptic integral of the second kind
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function ellipkm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		entr(x[, out])
		
		entr(x)
		
		Elementwise function for computing entropy.
		
		.. math:: \text{entr}(x) = \begin{cases} - x \log(x) & x > 0  \\ 0 & x = 0 \\ -\infty & \text{otherwise} \end{cases}
		
		Parameters
		----------
		x : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    The value of the elementwise entropy function at the given points `x`.
		
		See Also
		--------
		kl_div, rel_entr
		
		Notes
		-----
		This function is concave.
		
		.. versionadded:: 0.15.0
	**/
	static public function entr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erf(x[, out])
		
		erf(z)
		
		Returns the error function of complex argument.
		
		It is defined as ``2/sqrt(pi)*integral(exp(-t**2), t=0..z)``.
		
		Parameters
		----------
		x : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    The values of the error function at the given points `x`.
		
		See Also
		--------
		erfc, erfinv, erfcinv, wofz, erfcx, erfi
		
		Notes
		-----
		The cumulative of the unit normal distribution is given by
		``Phi(z) = 1/2[1 + erf(z/sqrt(2))]``.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Error_function
		.. [2] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover,
		    1972. http://www.math.sfu.ca/~cbm/aands/page_297.htm
		.. [3] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-3, 3)
		>>> plt.plot(x, special.erf(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$erf(x)$')
		>>> plt.show()
	**/
	static public function erf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfc(x[, out])
		
		erfc(x)
		
		Complementary error function, ``1 - erf(x)``.
		
		See Also
		--------
		erf, erfi, erfcx, dawsn, wofz
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-3, 3)
		>>> plt.plot(x, special.erfc(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$erfc(x)$')
		>>> plt.show()
	**/
	static public function erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfcx(x[, out])
		
		erfcx(x)
		
		Scaled complementary error function, ``exp(x**2) * erfc(x)``.
		
		See Also
		--------
		erf, erfc, erfi, dawsn, wofz
		
		Notes
		-----
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-3, 3)
		>>> plt.plot(x, special.erfcx(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$erfcx(x)$')
		>>> plt.show()
	**/
	static public function erfcx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfi(x[, out])
		
		erfi(z)
		
		Imaginary error function, ``-i erf(i z)``.
		
		See Also
		--------
		erf, erfc, erfcx, dawsn, wofz
		
		Notes
		-----
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-3, 3)
		>>> plt.plot(x, special.erfi(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$erfi(x)$')
		>>> plt.show()
	**/
	static public function erfi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		errprint(inflag=None)
		
		Sets or returns the error printing flag for special functions.
		
		Parameters
		----------
		inflag : bool, optional
		    Whether warnings concerning evaluation of special functions in
		    scipy.special are shown. If omitted, no change is made to the
		    current setting.
		
		Returns
		-------
		old_flag
		    Previous value of the error flag
	**/
	static public function errprint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyc(x1, x2[, out])
		
		eval_chebyc(n, x, out=None)
		
		Evaluate Chebyshev C polynomial at a point.
	**/
	static public function eval_chebyc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebys(x1, x2[, out])
		
		eval_chebys(n, x, out=None)
		
		Evaluate Chebyshev S polynomial at a point.
	**/
	static public function eval_chebys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyt(x1, x2[, out])
		
		eval_chebyt(n, x, out=None)
		
		Evaluate Chebyshev T polynomial at a point.
		
		This routine is numerically stable for `x` in ``[-1, 1]`` at least
		up to order ``10000``.
	**/
	static public function eval_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyu(x1, x2[, out])
		
		eval_chebyu(n, x, out=None)
		
		Evaluate Chebyshev U polynomial at a point.
	**/
	static public function eval_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_gegenbauer(x1, x2, x3[, out])
		
		eval_gegenbauer(n, alpha, x, out=None)
		
		Evaluate Gegenbauer polynomial at a point.
	**/
	static public function eval_gegenbauer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_genlaguerre(x1, x2, x3[, out])
		
		eval_genlaguerre(n, alpha, x, out=None)
		
		Evaluate generalized Laguerre polynomial at a point.
	**/
	static public function eval_genlaguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermite(x1, x2[, out])
		
		eval_hermite(n, x, out=None)
		
		Evaluate Hermite polynomial at a point.
	**/
	static public function eval_hermite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermitenorm(x1, x2[, out])
		
		eval_hermitenorm(n, x, out=None)
		
		Evaluate normalized Hermite polynomial at a point.
	**/
	static public function eval_hermitenorm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_jacobi(x1, x2, x3, x4[, out])
		
		eval_jacobi(n, alpha, beta, x, out=None)
		
		Evaluate Jacobi polynomial at a point.
	**/
	static public function eval_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_laguerre(x1, x2[, out])
		
		eval_laguerre(n, x, out=None)
		
		Evaluate Laguerre polynomial at a point.
	**/
	static public function eval_laguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_legendre(x1, x2[, out])
		
		eval_legendre(n, x, out=None)
		
		Evaluate Legendre polynomial at a point.
	**/
	static public function eval_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyt(x1, x2[, out])
		
		eval_sh_chebyt(n, x, out=None)
		
		Evaluate shifted Chebyshev T polynomial at a point.
	**/
	static public function eval_sh_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyu(x1, x2[, out])
		
		eval_sh_chebyu(n, x, out=None)
		
		Evaluate shifted Chebyshev U polynomial at a point.
	**/
	static public function eval_sh_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_jacobi(x1, x2, x3, x4[, out])
		
		eval_sh_jacobi(n, p, q, x, out=None)
		
		Evaluate shifted Jacobi polynomial at a point.
	**/
	static public function eval_sh_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_legendre(x1, x2[, out])
		
		eval_sh_legendre(n, x, out=None)
		
		Evaluate shifted Legendre polynomial at a point.
	**/
	static public function eval_sh_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp1(x[, out])
		
		exp1(z)
		
		Exponential integral E_1 of complex argument z
		
		::
		
		    integral(exp(-z*t)/t, t=1..inf).
	**/
	static public function exp1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp10(x[, out])
		
		exp10(x)
		
		10**x
	**/
	static public function exp10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp2(x[, out])
		
		exp2(x)
		
		2**x
	**/
	static public function exp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expi(x[, out])
		
		expi(x)
		
		Exponential integral Ei
		
		Defined as::
		
		    integral(exp(t)/t, t=-inf..x)
		
		See `expn` for a different exponential integral.
	**/
	static public function expi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expit(x[, out])
		
		expit(x)
		
		Expit ufunc for ndarrays.
		
		The expit function, also known as the logistic function, is defined as
		expit(x) = 1/(1+exp(-x)). It is the inverse of the logit function.
		
		Parameters
		----------
		x : ndarray
		    The ndarray to apply expit to element-wise.
		
		Returns
		-------
		out : ndarray
		    An ndarray of the same shape as x. Its entries
		    are expit of the corresponding entry of x.
		
		Notes
		-----
		As a ufunc expit takes a number of optional
		keyword arguments. For more information
		see `ufuncs <https://docs.scipy.org/doc/numpy/reference/ufuncs.html>`_
		
		.. versionadded:: 0.10.0
	**/
	static public function expit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1(x[, out])
		
		expm1(x)
		
		exp(x) - 1 for use when `x` is near zero.
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expn(x1, x2[, out])
		
		expn(n, x)
		
		Exponential integral E_n
		
		Returns the exponential integral for integer `n` and non-negative `x` and
		`n`::
		
		    integral(exp(-x*t) / t**n, t=1..inf).
	**/
	static public function expn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exprel(x[, out])
		
		exprel(x)
		
		Relative error exponential, (exp(x)-1)/x, for use when `x` is near zero.
		
		Parameters
		----------
		x : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    Output array.
		
		See Also
		--------
		expm1
		
		.. versionadded:: 0.17.0
	**/
	static public function exprel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fdtr(x1, x2, x3[, out])
		
		fdtr(dfn, dfd, x)
		
		F cumulative distribution function.
		
		Returns the value of the cumulative density function of the
		F-distribution, also known as Snedecor's F-distribution or the
		Fisher-Snedecor distribution.
		
		The F-distribution with parameters :math:`d_n` and :math:`d_d` is the
		distribution of the random variable,
		
		.. math::
		    X = \frac{U_n/d_n}{U_d/d_d},
		
		where :math:`U_n` and :math:`U_d` are random variables distributed
		:math:`\chi^2`, with :math:`d_n` and :math:`d_d` degrees of freedom,
		respectively.
		
		Parameters
		----------
		dfn : array_like
		    First parameter (positive float).
		dfd : array_like
		    Second parameter (positive float).
		x : array_like
		    Argument (nonnegative float).
		
		Returns
		-------
		y : ndarray
		    The CDF of the F-distribution with parameters `dfn` and `dfd` at `x`.
		
		Notes
		-----
		The regularized incomplete beta function is used, according to the
		formula,
		
		.. math::
		    F(d_n, d_d; x) = I_{xd_n/(d_d + xd_n)}(d_n/2, d_d/2).
		
		Wrapper for the Cephes [1]_ routine `fdtr`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function fdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fdtrc(x1, x2, x3[, out])
		
		fdtrc(dfn, dfd, x)
		
		F survival function.
		
		Returns the complemented F-distribution function (the integral of the
		density from `x` to infinity).
		
		Parameters
		----------
		dfn : array_like
		    First parameter (positive float).
		dfd : array_like
		    Second parameter (positive float).
		x : array_like
		    Argument (nonnegative float).
		
		Returns
		-------
		y : ndarray
		    The complemented F-distribution function with parameters `dfn` and
		    `dfd` at `x`.
		
		See also
		--------
		fdtr
		
		Notes
		-----
		The regularized incomplete beta function is used, according to the
		formula,
		
		.. math::
		    F(d_n, d_d; x) = I_{d_d/(d_d + xd_n)}(d_d/2, d_n/2).
		
		Wrapper for the Cephes [1]_ routine `fdtrc`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function fdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fdtri(x1, x2, x3[, out])
		
		fdtri(dfn, dfd, p)
		
		The `p`-th quantile of the F-distribution.
		
		This function is the inverse of the F-distribution CDF, `fdtr`, returning
		the `x` such that `fdtr(dfn, dfd, x) = p`.
		
		Parameters
		----------
		dfn : array_like
		    First parameter (positive float).
		dfd : array_like
		    Second parameter (positive float).
		p : array_like
		    Cumulative probability, in [0, 1].
		
		Returns
		-------
		x : ndarray
		    The quantile corresponding to `p`.
		
		Notes
		-----
		The computation is carried out using the relation to the inverse
		regularized beta function, :math:`I^{-1}_x(a, b)`.  Let
		:math:`z = I^{-1}_p(d_d/2, d_n/2).`  Then,
		
		.. math::
		    x = \frac{d_d (1 - z)}{d_n z}.
		
		If `p` is such that :math:`x < 0.5`, the following relation is used
		instead for improved stability: let
		:math:`z' = I^{-1}_{1 - p}(d_n/2, d_d/2).` Then,
		
		.. math::
		    x = \frac{d_d z'}{d_n (1 - z')}.
		
		Wrapper for the Cephes [1]_ routine `fdtri`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function fdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fdtridfd(x1, x2, x3[, out])
		
		fdtridfd(dfn, p, x)
		
		Inverse to `fdtr` vs dfd
		
		Finds the F density argument dfd such that ``fdtr(dfn, dfd, x) == p``.
	**/
	static public function fdtridfd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fresnel(x[, out1, out2])
		
		fresnel(z)
		
		Fresnel sin and cos integrals
		
		Defined as::
		
		    ssa = integral(sin(pi/2 * t**2), t=0..z)
		    csa = integral(cos(pi/2 * t**2), t=0..z)
		
		Parameters
		----------
		z : float or complex array_like
		    Argument
		
		Returns
		-------
		ssa, csa
		    Fresnel sin and cos integral values
	**/
	static public function fresnel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gamma(x[, out])
		
		gamma(z)
		
		Gamma function.
		
		The gamma function is often referred to as the generalized
		factorial since ``z*gamma(z) = gamma(z+1)`` and ``gamma(n+1) =
		n!`` for natural number *n*.
	**/
	static public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammainc(x1, x2[, out])
		
		gammainc(a, x)
		
		Incomplete gamma function
		
		Defined as::
		
		    1 / gamma(a) * integral(exp(-t) * t**(a-1), t=0..x)
		
		`a` must be positive and `x` must be >= 0.
	**/
	static public function gammainc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammaincc(x1, x2[, out])
		
		gammaincc(a, x)
		
		Complemented incomplete gamma integral
		
		Defined as::
		
		    1 / gamma(a) * integral(exp(-t) * t**(a-1), t=x..inf) = 1 - gammainc(a, x)
		
		`a` must be positive and `x` must be >= 0.
	**/
	static public function gammaincc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammainccinv(x1, x2[, out])
		
		gammainccinv(a, y)
		
		Inverse to `gammaincc`
		
		Returns `x` such that ``gammaincc(a, x) == y``.
	**/
	static public function gammainccinv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammaincinv(x1, x2[, out])
		
		gammaincinv(a, y)
		
		Inverse to `gammainc`
		
		Returns `x` such that ``gammainc(a, x) = y``.
	**/
	static public function gammaincinv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammasgn(x[, out])
		
		gammasgn(x)
		
		Sign of the gamma function.
		
		See Also
		--------
		gammaln
		loggamma
	**/
	static public function gammasgn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gdtr(x1, x2, x3[, out])
		
		gdtr(a, b, x)
		
		Gamma distribution cumulative density function.
		
		Returns the integral from zero to `x` of the gamma probability density
		function,
		
		.. math::
		
		    F = \int_0^x \frac{a^b}{\Gamma(b)} t^{b-1} e^{-at}\,dt,
		
		where :math:`\Gamma` is the gamma function.
		
		Parameters
		----------
		a : array_like
		    The rate parameter of the gamma distribution, sometimes denoted
		    :math:`\beta` (float).  It is also the reciprocal of the scale
		    parameter :math:`\theta`.
		b : array_like
		    The shape parameter of the gamma distribution, sometimes denoted
		    :math:`\alpha` (float).
		x : array_like
		    The quantile (upper limit of integration; float).
		
		See also
		--------
		gdtrc : 1 - CDF of the gamma distribution.
		
		Returns
		-------
		F : ndarray
		    The CDF of the gamma distribution with parameters `a` and `b`
		    evaluated at `x`.
		
		Notes
		-----
		The evaluation is carried out using the relation to the incomplete gamma
		integral (regularized gamma function).
		
		Wrapper for the Cephes [1]_ routine `gdtr`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function gdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gdtrc(x1, x2, x3[, out])
		
		gdtrc(a, b, x)
		
		Gamma distribution survival function.
		
		Integral from `x` to infinity of the gamma probability density function,
		
		.. math::
		
		    F = \int_x^\infty \frac{a^b}{\Gamma(b)} t^{b-1} e^{-at}\,dt,
		
		where :math:`\Gamma` is the gamma function.
		
		Parameters
		----------
		a : array_like
		    The rate parameter of the gamma distribution, sometimes denoted
		    :math:`\beta` (float).  It is also the reciprocal of the scale
		    parameter :math:`\theta`.
		b : array_like
		    The shape parameter of the gamma distribution, sometimes denoted
		    :math:`\alpha` (float).
		x : array_like
		    The quantile (lower limit of integration; float).
		
		Returns
		-------
		F : ndarray
		    The survival function of the gamma distribution with parameters `a`
		    and `b` evaluated at `x`.
		
		See Also
		--------
		gdtr, gdtri
		
		Notes
		-----
		The evaluation is carried out using the relation to the incomplete gamma
		integral (regularized gamma function).
		
		Wrapper for the Cephes [1]_ routine `gdtrc`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function gdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gdtria(x1, x2, x3[, out])
		
		gdtria(p, b, x, out=None)
		
		Inverse of `gdtr` vs a.
		
		Returns the inverse with respect to the parameter `a` of ``p =
		gdtr(a, b, x)``, the cumulative distribution function of the gamma
		distribution.
		
		Parameters
		----------
		p : array_like
		    Probability values.
		b : array_like
		    `b` parameter values of `gdtr(a, b, x)`.  `b` is the "shape" parameter
		    of the gamma distribution.
		x : array_like
		    Nonnegative real values, from the domain of the gamma distribution.
		out : ndarray, optional
		    If a fourth argument is given, it must be a numpy.ndarray whose size
		    matches the broadcast result of `a`, `b` and `x`.  `out` is then the
		    array returned by the function.
		
		Returns
		-------
		a : ndarray
		    Values of the `a` parameter such that `p = gdtr(a, b, x)`.  `1/a`
		    is the "scale" parameter of the gamma distribution.
		
		See Also
		--------
		gdtr : CDF of the gamma distribution.
		gdtrib : Inverse with respect to `b` of `gdtr(a, b, x)`.
		gdtrix : Inverse with respect to `x` of `gdtr(a, b, x)`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfgam`.
		
		The cumulative distribution function `p` is computed using a routine by
		DiDinato and Morris [2]_.  Computation of `a` involves a seach for a value
		that produces the desired value of `p`.  The search relies on the
		monotinicity of `p` with `a`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] DiDinato, A. R. and Morris, A. H.,
		       Computation of the incomplete gamma function ratios and their
		       inverse.  ACM Trans. Math. Softw. 12 (1986), 377-393.
		
		Examples
		--------
		First evaluate `gdtr`.
		
		>>> from scipy.special import gdtr, gdtria
		>>> p = gdtr(1.2, 3.4, 5.6)
		>>> print(p)
		0.94378087442
		
		Verify the inverse.
		
		>>> gdtria(p, 3.4, 5.6)
		1.2
	**/
	static public function gdtria(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gdtrib(x1, x2, x3[, out])
		
		gdtrib(a, p, x, out=None)
		
		Inverse of `gdtr` vs b.
		
		Returns the inverse with respect to the parameter `b` of ``p =
		gdtr(a, b, x)``, the cumulative distribution function of the gamma
		distribution.
		
		Parameters
		----------
		a : array_like
		    `a` parameter values of `gdtr(a, b, x)`. `1/a` is the "scale"
		    parameter of the gamma distribution.
		p : array_like
		    Probability values.
		x : array_like
		    Nonnegative real values, from the domain of the gamma distribution.
		out : ndarray, optional
		    If a fourth argument is given, it must be a numpy.ndarray whose size
		    matches the broadcast result of `a`, `b` and `x`.  `out` is then the
		    array returned by the function.
		
		Returns
		-------
		b : ndarray
		    Values of the `b` parameter such that `p = gdtr(a, b, x)`.  `b` is
		    the "shape" parameter of the gamma distribution.
		
		See Also
		--------
		gdtr : CDF of the gamma distribution.
		gdtria : Inverse with respect to `a` of `gdtr(a, b, x)`.
		gdtrix : Inverse with respect to `x` of `gdtr(a, b, x)`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfgam`.
		
		The cumulative distribution function `p` is computed using a routine by
		DiDinato and Morris [2]_.  Computation of `b` involves a seach for a value
		that produces the desired value of `p`.  The search relies on the
		monotinicity of `p` with `b`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] DiDinato, A. R. and Morris, A. H.,
		       Computation of the incomplete gamma function ratios and their
		       inverse.  ACM Trans. Math. Softw. 12 (1986), 377-393.
		
		Examples
		--------
		First evaluate `gdtr`.
		
		>>> from scipy.special import gdtr, gdtrib
		>>> p = gdtr(1.2, 3.4, 5.6)
		>>> print(p)
		0.94378087442
		
		Verify the inverse.
		
		>>> gdtrib(1.2, p, 5.6)
		3.3999999999723882
	**/
	static public function gdtrib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gdtrix(x1, x2, x3[, out])
		
		gdtrix(a, b, p, out=None)
		
		Inverse of `gdtr` vs x.
		
		Returns the inverse with respect to the parameter `x` of ``p =
		gdtr(a, b, x)``, the cumulative distribution function of the gamma
		distribution. This is also known as the p'th quantile of the
		distribution.
		
		Parameters
		----------
		a : array_like
		    `a` parameter values of `gdtr(a, b, x)`.  `1/a` is the "scale"
		    parameter of the gamma distribution.
		b : array_like
		    `b` parameter values of `gdtr(a, b, x)`.  `b` is the "shape" parameter
		    of the gamma distribution.
		p : array_like
		    Probability values.
		out : ndarray, optional
		    If a fourth argument is given, it must be a numpy.ndarray whose size
		    matches the broadcast result of `a`, `b` and `x`.  `out` is then the
		    array returned by the function.
		
		Returns
		-------
		x : ndarray
		    Values of the `x` parameter such that `p = gdtr(a, b, x)`.
		
		See Also
		--------
		gdtr : CDF of the gamma distribution.
		gdtria : Inverse with respect to `a` of `gdtr(a, b, x)`.
		gdtrib : Inverse with respect to `b` of `gdtr(a, b, x)`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfgam`.
		
		The cumulative distribution function `p` is computed using a routine by
		DiDinato and Morris [2]_.  Computation of `x` involves a seach for a value
		that produces the desired value of `p`.  The search relies on the
		monotinicity of `p` with `x`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] DiDinato, A. R. and Morris, A. H.,
		       Computation of the incomplete gamma function ratios and their
		       inverse.  ACM Trans. Math. Softw. 12 (1986), 377-393.
		
		Examples
		--------
		First evaluate `gdtr`.
		
		>>> from scipy.special import gdtr, gdtrix
		>>> p = gdtr(1.2, 3.4, 5.6)
		>>> print(p)
		0.94378087442
		
		Verify the inverse.
		
		>>> gdtrix(1.2, 3.4, p)
		5.5999999999999996
	**/
	static public function gdtrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hankel1(x1, x2[, out])
		
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
		hankel1e(x1, x2[, out])
		
		hankel1e(v, z)
		
		Exponentially scaled Hankel function of the first kind
		
		Defined as::
		
		    hankel1e(v, z) = hankel1(v, z) * exp(-1j * z)
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		out : Values of the exponentially scaled Hankel function.
		
		Notes
		-----
		A wrapper for the AMOS [1]_ routine `zbesh`, which carries out the
		computation using the relation,
		
		.. math:: H^{(1)}_v(z) = \frac{2}{\imath\pi} \exp(-\imath \pi v/2) K_v(z \exp(-\imath\pi/2))
		
		where :math:`K_v` is the modified Bessel function of the second kind.
		For negative orders, the relation
		
		.. math:: H^{(1)}_{-v}(z) = H^{(1)}_v(z) \exp(\imath\pi v)
		
		is used.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function hankel1e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hankel2(x1, x2[, out])
		
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
		hankel2e(x1, x2[, out])
		
		hankel2e(v, z)
		
		Exponentially scaled Hankel function of the second kind
		
		Defined as::
		
		    hankel2e(v, z) = hankel2(v, z) * exp(1j * z)
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		out : Values of the exponentially scaled Hankel function of the second kind.
		
		Notes
		-----
		A wrapper for the AMOS [1]_ routine `zbesh`, which carries out the
		computation using the relation,
		
		.. math:: H^{(2)}_v(z) = -\frac{2}{\imath\pi} \exp(\frac{\imath \pi v}{2}) K_v(z exp(\frac{\imath\pi}{2}))
		
		where :math:`K_v` is the modified Bessel function of the second kind.
		For negative orders, the relation
		
		.. math:: H^{(2)}_{-v}(z) = H^{(2)}_v(z) \exp(-\imath\pi v)
		
		is used.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function hankel2e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		huber(x1, x2[, out])
		
		huber(delta, r)
		
		Huber loss function.
		
		.. math:: \text{huber}(\delta, r) = \begin{cases} \infty & \delta < 0  \\ \frac{1}{2}r^2 & 0 \le \delta, | r | \le \delta \\ \delta ( |r| - \frac{1}{2}\delta ) & \text{otherwise} \end{cases}
		
		Parameters
		----------
		delta : ndarray
		    Input array, indicating the quadratic vs. linear loss changepoint.
		r : ndarray
		    Input array, possibly representing residuals.
		
		Returns
		-------
		res : ndarray
		    The computed Huber loss function values.
		
		Notes
		-----
		This function is convex in r.
		
		.. versionadded:: 0.15.0
	**/
	static public function huber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp0f1(x1, x2[, out])
		
		hyp0f1(v, x)
		
		Confluent hypergeometric limit function 0F1.
		
		Parameters
		----------
		v, z : array_like
		    Input values.
		
		Returns
		-------
		hyp0f1 : ndarray
		    The confluent hypergeometric limit function.
		
		Notes
		-----
		This function is defined as:
		
		.. math:: _0F_1(v, z) = \sum_{k=0}^{\infty}\frac{z^k}{(v)_k k!}.
		
		It's also the limit as :math:`q \to \infty` of :math:`_1F_1(q; v; z/q)`,
		and satisfies the differential equation :math:`f''(z) + vf'(z) = f(z)`.
	**/
	static public function hyp0f1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp1f1(x1, x2, x3[, out])
		
		hyp1f1(a, b, x)
		
		Confluent hypergeometric function 1F1(a, b; x)
	**/
	static public function hyp1f1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp1f2(x1, x2, x3, x4[, out1, out2])
		
		hyp1f2(a, b, c, x)
		
		Hypergeometric function 1F2 and error estimate
		
		Returns
		-------
		y
		    Value of the function
		err
		    Error estimate
	**/
	static public function hyp1f2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp2f0(x1, x2, x3, x4[, out1, out2])
		
		hyp2f0(a, b, x, type)
		
		Hypergeometric function 2F0 in y and an error estimate
		
		The parameter `type` determines a convergence factor and can be
		either 1 or 2.
		
		Returns
		-------
		y
		    Value of the function
		err
		    Error estimate
	**/
	static public function hyp2f0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp2f1(x1, x2, x3, x4[, out])
		
		hyp2f1(a, b, c, z)
		
		Gauss hypergeometric function 2F1(a, b; c; z).
	**/
	static public function hyp2f1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp3f0(x1, x2, x3, x4[, out1, out2])
		
		hyp3f0(a, b, c, x)
		
		Hypergeometric function 3F0 in y and an error estimate
		
		Returns
		-------
		y
		    Value of the function
		err
		    Error estimate
	**/
	static public function hyp3f0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyperu(x1, x2, x3[, out])
		
		hyperu(a, b, x)
		
		Confluent hypergeometric function U(a, b, x) of the second kind
	**/
	static public function hyperu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i0(x[, out])
		
		i0(x)
		
		Modified Bessel function of order 0.
		
		Defined as,
		
		.. math::
		    I_0(x) = \sum_{k=0}^\infty \frac{(x^2/4)^k}{(k!)^2} = J_0(\imath x),
		
		where :math:`J_0` is the Bessel function of the first kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the modified Bessel function of order 0 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `i0`.
		
		See also
		--------
		iv
		i0e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function i0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i0e(x[, out])
		
		i0e(x)
		
		Exponentially scaled modified Bessel function of order 0.
		
		Defined as::
		
		    i0e(x) = exp(-abs(x)) * i0(x).
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the exponentially scaled modified Bessel function of order 0
		    at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval.  The
		polynomial expansions used are the same as those in `i0`, but
		they are not multiplied by the dominant exponential factor.
		
		This function is a wrapper for the Cephes [1]_ routine `i0e`.
		
		See also
		--------
		iv
		i0
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function i0e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i1(x[, out])
		
		i1(x)
		
		Modified Bessel function of order 1.
		
		Defined as,
		
		.. math::
		    I_1(x) = \frac{1}{2}x \sum_{k=0}^\infty \frac{(x^2/4)^k}{k! (k + 1)!}
		           = -\imath J_1(\imath x),
		
		where :math:`J_1` is the Bessel function of the first kind of order 1.
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the modified Bessel function of order 1 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `i1`.
		
		See also
		--------
		iv
		i1e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function i1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i1e(x[, out])
		
		i1e(x)
		
		Exponentially scaled modified Bessel function of order 1.
		
		Defined as::
		
		    i1e(x) = exp(-abs(x)) * i1(x)
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the exponentially scaled modified Bessel function of order 1
		    at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval. The
		polynomial expansions used are the same as those in `i1`, but
		they are not multiplied by the dominant exponential factor.
		
		This function is a wrapper for the Cephes [1]_ routine `i1e`.
		
		See also
		--------
		iv
		i1
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function i1e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_boxcox(x1, x2[, out])
		
		inv_boxcox(y, lmbda)
		
		Compute the inverse of the Box-Cox transformation.
		
		Find ``x`` such that::
		
		    y = (x**lmbda - 1) / lmbda  if lmbda != 0
		        log(x)                  if lmbda == 0
		
		Parameters
		----------
		y : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		x : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.special import boxcox, inv_boxcox
		>>> y = boxcox([1, 4, 10], 2.5)
		>>> inv_boxcox(y, 2.5)
		array([1., 4., 10.])
	**/
	static public function inv_boxcox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_boxcox1p(x1, x2[, out])
		
		inv_boxcox1p(y, lmbda)
		
		Compute the inverse of the Box-Cox transformation.
		
		Find ``x`` such that::
		
		    y = ((1+x)**lmbda - 1) / lmbda  if lmbda != 0
		        log(1+x)                    if lmbda == 0
		
		Parameters
		----------
		y : array_like
		    Data to be transformed.
		lmbda : array_like
		    Power parameter of the Box-Cox transform.
		
		Returns
		-------
		x : array
		    Transformed data.
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.special import boxcox1p, inv_boxcox1p
		>>> y = boxcox1p([1, 4, 10], 2.5)
		>>> inv_boxcox1p(y, 2.5)
		array([1., 4., 10.])
	**/
	static public function inv_boxcox1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		it2i0k0(x[, out1, out2])
		
		it2i0k0(x)
		
		Integrals related to modified Bessel functions of order 0
		
		Returns
		-------
		ii0
		    ``integral((i0(t)-1)/t, t=0..x)``
		ik0
		    ``int(k0(t)/t, t=x..inf)``
	**/
	static public function it2i0k0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		it2j0y0(x[, out1, out2])
		
		it2j0y0(x)
		
		Integrals related to Bessel functions of order 0
		
		Returns
		-------
		ij0
		    ``integral((1-j0(t))/t, t=0..x)``
		iy0
		    ``integral(y0(t)/t, t=x..inf)``
	**/
	static public function it2j0y0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		it2struve0(x[, out])
		
		it2struve0(x)
		
		Integral related to the Struve function of order 0.
		
		Returns the integral,
		
		.. math::
		    \int_x^\infty \frac{H_0(t)}{t}\,dt
		
		where :math:`H_0` is the Struve function of order 0.
		
		Parameters
		----------
		x : array_like
		    Lower limit of integration.
		
		Returns
		-------
		I : ndarray
		    The value of the integral.
		
		See also
		--------
		struve
		
		Notes
		-----
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function it2struve0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itairy(x[, out1, out2, out3, out4])
		
		itairy(x)
		
		Integrals of Airy functions
		
		Calculates the integrals of Airy functions from 0 to `x`.
		
		Parameters
		----------
		
		x: array_like
		    Upper limit of integration (float).
		
		Returns
		-------
		Apt
		    Integral of Ai(t) from 0 to x.
		Bpt
		    Integral of Bi(t) from 0 to x.
		Ant
		    Integral of Ai(-t) from 0 to x.
		Bnt
		    Integral of Bi(-t) from 0 to x.
		
		Notes
		-----
		
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function itairy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		iti0k0(x[, out1, out2])
		
		iti0k0(x)
		
		Integrals of modified Bessel functions of order 0
		
		Returns simple integrals from 0 to `x` of the zeroth order modified
		Bessel functions `i0` and `k0`.
		
		Returns
		-------
		ii0, ik0
	**/
	static public function iti0k0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itj0y0(x[, out1, out2])
		
		itj0y0(x)
		
		Integrals of Bessel functions of order 0
		
		Returns simple integrals from 0 to `x` of the zeroth order Bessel
		functions `j0` and `y0`.
		
		Returns
		-------
		ij0, iy0
	**/
	static public function itj0y0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itmodstruve0(x[, out])
		
		itmodstruve0(x)
		
		Integral of the modified Struve function of order 0.
		
		.. math::
		    I = \int_0^x L_0(t)\,dt
		
		Parameters
		----------
		x : array_like
		    Upper limit of integration (float).
		
		Returns
		-------
		I : ndarray
		    The integral of :math:`L_0` from 0 to `x`.
		
		Notes
		-----
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function itmodstruve0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itstruve0(x[, out])
		
		itstruve0(x)
		
		Integral of the Struve function of order 0.
		
		.. math::
		    I = \int_0^x H_0(t)\,dt
		
		Parameters
		----------
		x : array_like
		    Upper limit of integration (float).
		
		Returns
		-------
		I : ndarray
		    The integral of :math:`H_0` from 0 to `x`.
		
		See also
		--------
		struve
		
		Notes
		-----
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function itstruve0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		iv(x1, x2[, out])
		
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
		called. It uses a power series for small `z`, the asymptitic expansion
		for large `abs(z)`, the Miller algorithm normalized by the Wronskian
		and a Neumann series for intermediate magnitudes, and the uniform
		asymptitic expansions for :math:`I_v(z)` and :math:`J_v(z)` for large
		orders.  Backward recurrence is used to generate sequences or reduce
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
		ive(x1, x2[, out])
		
		ive(v, z)
		
		Exponentially scaled modified Bessel function of the first kind
		
		Defined as::
		
		    ive(v, z) = iv(v, z) * exp(-abs(z.real))
		
		Parameters
		----------
		v : array_like of float
		    Order.
		z : array_like of float or complex
		    Argument.
		
		Returns
		-------
		out : ndarray
		    Values of the exponentially scaled modified Bessel function.
		
		Notes
		-----
		For positive `v`, the AMOS [1]_ `zbesi` routine is called. It uses a
		power series for small `z`, the asymptitic expansion for large
		`abs(z)`, the Miller algorithm normalized by the Wronskian and a
		Neumann series for intermediate magnitudes, and the uniform asymptitic
		expansions for :math:`I_v(z)` and :math:`J_v(z)` for large orders.
		Backward recurrence is used to generate sequences or reduce orders when
		necessary.
		
		The calculations above are done in the right half plane and continued
		into the left half plane by the formula,
		
		.. math:: I_v(z \exp(\pm\imath\pi)) = \exp(\pm\pi v) I_v(z)
		
		(valid when the real part of `z` is positive).  For negative `v`, the
		formula
		
		.. math:: I_{-v}(z) = I_v(z) + \frac{2}{\pi} \sin(\pi v) K_v(z)
		
		is used, where :math:`K_v(z)` is the modified Bessel function of the
		second kind, evaluated using the AMOS routine `zbesk`.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function ive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		j0(x[, out])
		
		j0(x)
		
		Bessel function of the first kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float).
		
		Returns
		-------
		J : ndarray
		    Value of the Bessel function of the first kind of order 0 at `x`.
		
		Notes
		-----
		The domain is divided into the intervals [0, 5] and (5, infinity). In the
		first interval the following rational approximation is used:
		
		.. math::
		
		    J_0(x) \approx (w - r_1^2)(w - r_2^2) \frac{P_3(w)}{Q_8(w)},
		
		where :math:`w = x^2` and :math:`r_1`, :math:`r_2` are the zeros of
		:math:`J_0`, and :math:`P_3` and :math:`Q_8` are polynomials of degrees 3
		and 8, respectively.
		
		In the second interval, the Hankel asymptotic expansion is employed with
		two rational functions of degree 6/6 and 7/7.
		
		This function is a wrapper for the Cephes [1]_ routine `j0`.
		
		See also
		--------
		jv : Bessel function of real order and complex argument.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function j0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		j1(x[, out])
		
		j1(x)
		
		Bessel function of the first kind of order 1.
		
		Parameters
		----------
		x : array_like
		    Argument (float).
		
		Returns
		-------
		J : ndarray
		    Value of the Bessel function of the first kind of order 1 at `x`.
		
		Notes
		-----
		The domain is divided into the intervals [0, 8] and (8, infinity). In the
		first interval a 24 term Chebyshev expansion is used. In the second, the
		asymptotic trigonometric representation is employed using two rational
		functions of degree 5/5.
		
		This function is a wrapper for the Cephes [1]_ routine `j1`.
		
		See also
		--------
		jv
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function j1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jv(x1, x2[, out])
		
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
		    J_v(z) = \exp(n\pi\imath/2) I_v(-\imath z)\qquad (\Im z > 0)
		
		    J_v(z) = \exp(-n\pi\imath/2) I_v(\imath z)\qquad (\Im z < 0)
		
		For negative `v` values the formula,
		
		.. math:: J_{-v}(z) = J_v(z) \cos(\pi v) - Y_v(z) \sin(\pi v)
		
		is used, where :math:`Y_v(z)` is the Bessel function of the second
		kind, computed using the AMOS routine `zbesy`.  Note that the second
		term is exactly zero for integer `v`; to improve accuracy the second
		term is explicitly omitted for `v` values such that `v = floor(v)`.
		
		See also
		--------
		jve : :math:`J_v` with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function jn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jv(x1, x2[, out])
		
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
		    J_v(z) = \exp(n\pi\imath/2) I_v(-\imath z)\qquad (\Im z > 0)
		
		    J_v(z) = \exp(-n\pi\imath/2) I_v(\imath z)\qquad (\Im z < 0)
		
		For negative `v` values the formula,
		
		.. math:: J_{-v}(z) = J_v(z) \cos(\pi v) - Y_v(z) \sin(\pi v)
		
		is used, where :math:`Y_v(z)` is the Bessel function of the second
		kind, computed using the AMOS routine `zbesy`.  Note that the second
		term is exactly zero for integer `v`; to improve accuracy the second
		term is explicitly omitted for `v` values such that `v = floor(v)`.
		
		See also
		--------
		jve : :math:`J_v` with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function jv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jve(x1, x2[, out])
		
		jve(v, z)
		
		Exponentially scaled Bessel function of order `v`.
		
		Defined as::
		
		    jve(v, z) = jv(v, z) * exp(-abs(z.imag))
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		J : ndarray
		    Value of the exponentially scaled Bessel function.
		
		Notes
		-----
		For positive `v` values, the computation is carried out using the AMOS
		[1]_ `zbesj` routine, which exploits the connection to the modified
		Bessel function :math:`I_v`,
		
		.. math::
		    J_v(z) = \exp(n\pi\imath/2) I_v(-\imath z)\qquad (\Im z > 0)
		
		    J_v(z) = \exp(-n\pi\imath/2) I_v(\imath z)\qquad (\Im z < 0)
		
		For negative `v` values the formula,
		
		.. math:: J_{-v}(z) = J_v(z) \cos(\pi v) - Y_v(z) \sin(\pi v)
		
		is used, where :math:`Y_v(z)` is the Bessel function of the second
		kind, computed using the AMOS routine `zbesy`.  Note that the second
		term is exactly zero for integer `v`; to improve accuracy the second
		term is explicitly omitted for `v` values such that `v = floor(v)`.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function jve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k0(x[, out])
		
		k0(x)
		
		Modified Bessel function of the second kind of order 0, :math:`K_0`.
		
		This function is also sometimes referred to as the modified Bessel
		function of the third kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float).
		
		Returns
		-------
		K : ndarray
		    Value of the modified Bessel function :math:`K_0` at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 2] and (2, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `k0`.
		
		See also
		--------
		kv
		k0e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function k0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k0e(x[, out])
		
		k0e(x)
		
		Exponentially scaled modified Bessel function K of order 0
		
		Defined as::
		
		    k0e(x) = exp(x) * k0(x).
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		K : ndarray
		    Value of the exponentially scaled modified Bessel function K of order
		    0 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 2] and (2, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `k0e`.
		
		See also
		--------
		kv
		k0
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function k0e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k1(x[, out])
		
		k1(x)
		
		Modified Bessel function of the second kind of order 1, :math:`K_1(x)`.
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		K : ndarray
		    Value of the modified Bessel function K of order 1 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 2] and (2, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `k1`.
		
		See also
		--------
		kv
		k1e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function k1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k1e(x[, out])
		
		k1e(x)
		
		Exponentially scaled modified Bessel function K of order 1
		
		Defined as::
		
		    k1e(x) = exp(x) * k1(x)
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		K : ndarray
		    Value of the exponentially scaled modified Bessel function K of order
		    1 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 2] and (2, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `k1e`.
		
		See also
		--------
		kv
		k1
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function k1e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kei(x[, out])
		
		kei(x)
		
		Kelvin function ker
	**/
	static public function kei(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keip(x[, out])
		
		keip(x)
		
		Derivative of the Kelvin function kei
	**/
	static public function keip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kelvin(x[, out1, out2, out3, out4])
		
		kelvin(x)
		
		Kelvin functions as complex numbers
		
		Returns
		-------
		Be, Ke, Bep, Kep
		    The tuple (Be, Ke, Bep, Kep) contains complex numbers
		    representing the real and imaginary Kelvin functions and their
		    derivatives evaluated at `x`.  For example, kelvin(x)[0].real =
		    ber x and kelvin(x)[0].imag = bei x with similar relationships
		    for ker and kei.
	**/
	static public function kelvin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ker(x[, out])
		
		ker(x)
		
		Kelvin function ker
	**/
	static public function ker(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kerp(x[, out])
		
		kerp(x)
		
		Derivative of the Kelvin function ker
	**/
	static public function kerp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kl_div(x1, x2[, out])
		
		kl_div(x, y)
		
		Elementwise function for computing Kullback-Leibler divergence.
		
		.. math:: \mathrm{kl\_div}(x, y) = \begin{cases} x \log(x / y) - x + y & x > 0, y > 0 \\ y & x = 0, y \ge 0 \\ \infty & \text{otherwise} \end{cases}
		
		Parameters
		----------
		x : ndarray
		    First input array.
		y : ndarray
		    Second input array.
		
		Returns
		-------
		res : ndarray
		    Output array.
		
		See Also
		--------
		entr, rel_entr
		
		Notes
		-----
		This function is non-negative and is jointly convex in `x` and `y`.
		
		.. versionadded:: 0.15.0
	**/
	static public function kl_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kn(x1, x2[, out])
		
		kn(n, x)
		
		Modified Bessel function of the second kind of integer order `n`
		
		Returns the modified Bessel function of the second kind for integer order
		`n` at real `z`.
		
		These are also sometimes called functions of the third kind, Basset
		functions, or Macdonald functions.
		
		Parameters
		----------
		n : array_like of int
		    Order of Bessel functions (floats will truncate with a warning)
		z : array_like of float
		    Argument at which to evaluate the Bessel functions
		
		Returns
		-------
		out : ndarray
		    The results
		
		Notes
		-----
		Wrapper for AMOS [1]_ routine `zbesk`.  For a discussion of the
		algorithm used, see [2]_ and the references therein.
		
		See Also
		--------
		kv : Same function, but accepts real order and complex argument
		kvp : Derivative of this function
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
		.. [2] Donald E. Amos, "Algorithm 644: A portable package for Bessel
		       functions of a complex argument and nonnegative order", ACM
		       TOMS Vol. 12 Issue 3, Sept. 1986, p. 265
		
		Examples
		--------
		Plot the function of several orders for real input:
		
		>>> from scipy.special import kn
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(0, 5, 1000)
		>>> for N in range(6):
		...     plt.plot(x, kn(N, x), label='$K_{}(x)$'.format(N))
		>>> plt.ylim(0, 10)
		>>> plt.legend()
		>>> plt.title(r'Modified Bessel function of the second kind $K_n(x)$')
		>>> plt.show()
		
		Calculate for a single value at multiple orders:
		
		>>> kn([4, 5, 6], 1)
		array([   44.23241585,   360.9605896 ,  3653.83831186])
	**/
	static public function kn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kolmogi(x[, out])
		
		kolmogi(p)
		
		Inverse function to kolmogorov
		
		Returns y such that ``kolmogorov(y) == p``.
	**/
	static public function kolmogi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kolmogorov(x[, out])
		
		kolmogorov(y)
		
		Complementary cumulative distribution function of Kolmogorov distribution
		
		Returns the complementary cumulative distribution function of
		Kolmogorov's limiting distribution (Kn* for large n) of a
		two-sided test for equality between an empirical and a theoretical
		distribution. It is equal to the (limit as n->infinity of the)
		probability that sqrt(n) * max absolute deviation > y.
	**/
	static public function kolmogorov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kv(x1, x2[, out])
		
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
		       Eq. 10.25.E3. http://dlmf.nist.gov/10.25.E3
		
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
		kve(x1, x2[, out])
		
		kve(v, z)
		
		Exponentially scaled modified Bessel function of the second kind.
		
		Returns the exponentially scaled, modified Bessel function of the
		second kind (sometimes called the third kind) for real order `v` at
		complex `z`::
		
		    kve(v, z) = kv(v, z) * exp(z)
		
		Parameters
		----------
		v : array_like of float
		    Order of Bessel functions
		z : array_like of complex
		    Argument at which to evaluate the Bessel functions
		
		Returns
		-------
		out : ndarray
		    The exponentially scaled modified Bessel function of the second kind.
		
		Notes
		-----
		Wrapper for AMOS [1]_ routine `zbesk`.  For a discussion of the
		algorithm used, see [2]_ and the references therein.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
		.. [2] Donald E. Amos, "Algorithm 644: A portable package for Bessel
		       functions of a complex argument and nonnegative order", ACM
		       TOMS Vol. 12 Issue 3, Sept. 1986, p. 265
	**/
	static public function kve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x[, out])
		
		log1p(x)
		
		Calculates log(1+x) for use when `x` is near zero
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log_ndtr(x[, out])
		
		log_ndtr(x)
		
		Logarithm of Gaussian cumulative distribution function.
		
		Returns the log of the area under the standard Gaussian probability
		density function, integrated from minus infinity to `x`::
		
		    log(1/sqrt(2*pi) * integral(exp(-t**2 / 2), t=-inf..x))
		
		Parameters
		----------
		x : array_like, real or complex
		    Argument
		
		Returns
		-------
		ndarray
		    The value of the log of the normal CDF evaluated at `x`
		
		See Also
		--------
		erf
		erfc
		scipy.stats.norm
		ndtr
	**/
	static public function log_ndtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		loggamma(x[, out])
		
		loggamma(z, out=None)
		
		Principal branch of the logarithm of the Gamma function.
		
		Defined to be :math:`\log(\Gamma(x))` for :math:`x > 0` and
		extended to the complex plane by analytic continuation. The
		function has a single branch cut on the negative real axis.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		z : array-like
		    Values in the complex plain at which to compute ``loggamma``
		out : ndarray, optional
		    Output array for computed values of ``loggamma``
		
		Returns
		-------
		loggamma : ndarray
		    Values of ``loggamma`` at z.
		
		Notes
		-----
		It is not generally true that :math:`\log\Gamma(z) =
		\log(\Gamma(z))`, though the real parts of the functions do
		agree. The benefit of not defining ``loggamma`` as
		:math:`\log(\Gamma(z))` is that the latter function has a
		complicated branch cut structure whereas ``loggamma`` is analytic
		except for on the negative real axis.
		
		The identities
		
		.. math::
		  \exp(\log\Gamma(z)) &= \Gamma(z) \\
		  \log\Gamma(z + 1) &= \log(z) + \log\Gamma(z)
		
		make ``loggama`` useful for working in complex logspace. However,
		``loggamma`` necessarily returns complex outputs for real inputs,
		so if you want to work only with real numbers use `gammaln`. On
		the real line the two functions are related by ``exp(loggamma(x))
		= gammasgn(x)*exp(gammaln(x))``, though in practice rounding
		errors will introduce small spurious imaginary components in
		``exp(loggamma(x))``.
		
		The implementation here is based on [hare1997]_.
		
		See also
		--------
		gammaln : logarithm of the absolute value of the Gamma function
		gammasgn : sign of the gamma function
		
		References
		----------
		.. [hare1997] D.E.G. Hare,
		  *Computing the Principal Branch of log-Gamma*,
		  Journal of Algorithms, Volume 25, Issue 2, November 1997, pages 221-236.
	**/
	static public function loggamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logit(x[, out])
		
		logit(x)
		
		Logit ufunc for ndarrays.
		
		The logit function is defined as logit(p) = log(p/(1-p)).
		Note that logit(0) = -inf, logit(1) = inf, and logit(p)
		for p<0 or p>1 yields nan.
		
		Parameters
		----------
		x : ndarray
		    The ndarray to apply logit to element-wise.
		
		Returns
		-------
		out : ndarray
		    An ndarray of the same shape as x. Its entries
		    are logit of the corresponding entry of x.
		
		Notes
		-----
		As a ufunc logit takes a number of optional
		keyword arguments. For more information
		see `ufuncs <https://docs.scipy.org/doc/numpy/reference/ufuncs.html>`_
		
		.. versionadded:: 0.10.0
	**/
	static public function logit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lpmv(x1, x2, x3[, out])
		
		lpmv(m, v, x)
		
		Associated legendre function of integer order.
		
		Parameters
		----------
		m : int
		    Order
		v : float
		    Degree.
		x : float
		    Argument. Must be ``|x| <= 1``.
		
		Returns
		-------
		res : float
		    The value of the function.
		
		See Also
		--------
		lpmn : Similar, but computes values for all orders 0..m and degrees 0..n.
		clpmn : Similar to `lpmn` but allows a complex argument.
		
		Notes
		-----
		It is possible to extend the domain of this function to all
		complex m, v, x, but this is not yet implemented.
	**/
	static public function lpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_a(x1, x2[, out])
		
		mathieu_a(m, q)
		
		Characteristic value of even Mathieu functions
		
		Returns the characteristic value for the even solution,
		``ce_m(z, q)``, of Mathieu's equation.
	**/
	static public function mathieu_a(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_b(x1, x2[, out])
		
		mathieu_b(m, q)
		
		Characteristic value of odd Mathieu functions
		
		Returns the characteristic value for the odd solution,
		``se_m(z, q)``, of Mathieu's equation.
	**/
	static public function mathieu_b(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_cem(x1, x2, x3[, out1, out2])
		
		mathieu_cem(m, q, x)
		
		Even Mathieu function and its derivative
		
		Returns the even Mathieu function, ``ce_m(x, q)``, of order `m` and
		parameter `q` evaluated at `x` (given in degrees).  Also returns the
		derivative with respect to `x` of ce_m(x, q)
		
		Parameters
		----------
		m
		    Order of the function
		q
		    Parameter of the function
		x
		    Argument of the function, *given in degrees, not radians*
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_cem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_modcem1(x1, x2, x3[, out1, out2])
		
		mathieu_modcem1(m, q, x)
		
		Even modified Mathieu function of the first kind and its derivative
		
		Evaluates the even modified Mathieu function of the first kind,
		``Mc1m(x, q)``, and its derivative at `x` for order `m` and parameter
		`q`.
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_modcem1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_modcem2(x1, x2, x3[, out1, out2])
		
		mathieu_modcem2(m, q, x)
		
		Even modified Mathieu function of the second kind and its derivative
		
		Evaluates the even modified Mathieu function of the second kind,
		Mc2m(x, q), and its derivative at `x` (given in degrees) for order `m`
		and parameter `q`.
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_modcem2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_modsem1(x1, x2, x3[, out1, out2])
		
		mathieu_modsem1(m, q, x)
		
		Odd modified Mathieu function of the first kind and its derivative
		
		Evaluates the odd modified Mathieu function of the first kind,
		Ms1m(x, q), and its derivative at `x` (given in degrees) for order `m`
		and parameter `q`.
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_modsem1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_modsem2(x1, x2, x3[, out1, out2])
		
		mathieu_modsem2(m, q, x)
		
		Odd modified Mathieu function of the second kind and its derivative
		
		Evaluates the odd modified Mathieu function of the second kind,
		Ms2m(x, q), and its derivative at `x` (given in degrees) for order `m`
		and parameter q.
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_modsem2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_sem(x1, x2, x3[, out1, out2])
		
		mathieu_sem(m, q, x)
		
		Odd Mathieu function and its derivative
		
		Returns the odd Mathieu function, se_m(x, q), of order `m` and
		parameter `q` evaluated at `x` (given in degrees).  Also returns the
		derivative with respect to `x` of se_m(x, q).
		
		Parameters
		----------
		m
		    Order of the function
		q
		    Parameter of the function
		x
		    Argument of the function, *given in degrees, not radians*.
		
		Returns
		-------
		y
		    Value of the function
		yp
		    Value of the derivative vs x
	**/
	static public function mathieu_sem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modfresnelm(x[, out1, out2])
		
		modfresnelm(x)
		
		Modified Fresnel negative integrals
		
		Returns
		-------
		fm
		    Integral ``F_-(x)``: ``integral(exp(-1j*t*t), t=x..inf)``
		km
		    Integral ``K_-(x)``: ``1/sqrt(pi)*exp(1j*(x*x+pi/4))*fp``
	**/
	static public function modfresnelm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modfresnelp(x[, out1, out2])
		
		modfresnelp(x)
		
		Modified Fresnel positive integrals
		
		Returns
		-------
		fp
		    Integral ``F_+(x)``: ``integral(exp(1j*t*t), t=x..inf)``
		kp
		    Integral ``K_+(x)``: ``1/sqrt(pi)*exp(-1j*(x*x+pi/4))*fp``
	**/
	static public function modfresnelp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modstruve(x1, x2[, out])
		
		modstruve(v, x)
		
		Modified Struve function.
		
		Return the value of the modified Struve function of order `v` at `x`.  The
		modified Struve function is defined as,
		
		.. math::
		    L_v(x) = -\imath \exp(-\pi\imath v/2) H_v(x),
		
		where :math:`H_v` is the Struve function.
		
		Parameters
		----------
		v : array_like
		    Order of the modified Struve function (float).
		x : array_like
		    Argument of the Struve function (float; must be positive unless `v` is
		    an integer).
		
		Returns
		-------
		L : ndarray
		    Value of the modified Struve function of order `v` at `x`.
		
		Notes
		-----
		Three methods discussed in [1]_ are used to evaluate the function:
		
		- power series
		- expansion in Bessel functions (if :math:`|z| < |v| + 20`)
		- asymptotic large-z expansion (if :math:`z \geq 0.7v + 12`)
		
		Rounding errors are estimated based on the largest terms in the sums, and
		the result associated with the smallest error is returned.
		
		See also
		--------
		struve
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/11
	**/
	static public function modstruve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nbdtr(x1, x2, x3[, out])
		
		nbdtr(k, n, p)
		
		Negative binomial cumulative distribution function.
		
		Returns the sum of the terms 0 through `k` of the negative binomial
		distribution probability mass function,
		
		.. math::
		
		    F = \sum_{j=0}^k {{n + j - 1}\choose{j}} p^n (1 - p)^j.
		
		In a sequence of Bernoulli trials with individual success probabilities
		`p`, this is the probability that `k` or fewer failures precede the nth
		success.
		
		Parameters
		----------
		k : array_like
		    The maximum number of allowed failures (nonnegative int).
		n : array_like
		    The target number of successes (positive int).
		p : array_like
		    Probability of success in a single event (float).
		
		Returns
		-------
		F : ndarray
		    The probability of `k` or fewer failures before `n` successes in a
		    sequence of events with individual success probability `p`.
		
		See also
		--------
		nbdtrc
		
		Notes
		-----
		If floating point values are passed for `k` or `n`, they will be truncated
		to integers.
		
		The terms are not summed directly; instead the regularized incomplete beta
		function is employed, according to the formula,
		
		.. math::
		    \mathrm{nbdtr}(k, n, p) = I_{p}(n, k + 1).
		
		Wrapper for the Cephes [1]_ routine `nbdtr`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function nbdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nbdtrc(x1, x2, x3[, out])
		
		nbdtrc(k, n, p)
		
		Negative binomial survival function.
		
		Returns the sum of the terms `k + 1` to infinity of the negative binomial
		distribution probability mass function,
		
		.. math::
		
		    F = \sum_{j=k + 1}^\infty {{n + j - 1}\choose{j}} p^n (1 - p)^j.
		
		In a sequence of Bernoulli trials with individual success probabilities
		`p`, this is the probability that more than `k` failures precede the nth
		success.
		
		Parameters
		----------
		k : array_like
		    The maximum number of allowed failures (nonnegative int).
		n : array_like
		    The target number of successes (positive int).
		p : array_like
		    Probability of success in a single event (float).
		
		Returns
		-------
		F : ndarray
		    The probability of `k + 1` or more failures before `n` successes in a
		    sequence of events with individual success probability `p`.
		
		Notes
		-----
		If floating point values are passed for `k` or `n`, they will be truncated
		to integers.
		
		The terms are not summed directly; instead the regularized incomplete beta
		function is employed, according to the formula,
		
		.. math::
		    \mathrm{nbdtrc}(k, n, p) = I_{1 - p}(k + 1, n).
		
		Wrapper for the Cephes [1]_ routine `nbdtrc`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function nbdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nbdtri(x1, x2, x3[, out])
		
		nbdtri(k, n, y)
		
		Inverse of `nbdtr` vs `p`.
		
		Returns the inverse with respect to the parameter `p` of
		`y = nbdtr(k, n, p)`, the negative binomial cumulative distribution
		function.
		
		Parameters
		----------
		k : array_like
		    The maximum number of allowed failures (nonnegative int).
		n : array_like
		    The target number of successes (positive int).
		y : array_like
		    The probability of `k` or fewer failures before `n` successes (float).
		
		Returns
		-------
		p : ndarray
		    Probability of success in a single event (float) such that
		    `nbdtr(k, n, p) = y`.
		
		See also
		--------
		nbdtr : Cumulative distribution function of the negative binomial.
		nbdtrik : Inverse with respect to `k` of `nbdtr(k, n, p)`.
		nbdtrin : Inverse with respect to `n` of `nbdtr(k, n, p)`.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `nbdtri`.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function nbdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nbdtrik(x1, x2, x3[, out])
		
		nbdtrik(y, n, p)
		
		Inverse of `nbdtr` vs `k`.
		
		Returns the inverse with respect to the parameter `k` of
		`y = nbdtr(k, n, p)`, the negative binomial cumulative distribution
		function.
		
		Parameters
		----------
		y : array_like
		    The probability of `k` or fewer failures before `n` successes (float).
		n : array_like
		    The target number of successes (positive int).
		p : array_like
		    Probability of success in a single event (float).
		
		Returns
		-------
		k : ndarray
		    The maximum number of allowed failures such that `nbdtr(k, n, p) = y`.
		
		See also
		--------
		nbdtr : Cumulative distribution function of the negative binomial.
		nbdtri : Inverse with respect to `p` of `nbdtr(k, n, p)`.
		nbdtrin : Inverse with respect to `n` of `nbdtr(k, n, p)`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfnbn`.
		
		Formula 26.5.26 of [2]_,
		
		.. math::
		    \sum_{j=k + 1}^\infty {{n + j - 1}\choose{j}} p^n (1 - p)^j = I_{1 - p}(k + 1, n),
		
		is used to reduce calculation of the cumulative distribution function to
		that of a regularized incomplete beta :math:`I`.
		
		Computation of `k` involves a seach for a value that produces the desired
		value of `y`.  The search relies on the monotinicity of `y` with `k`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] Milton Abramowitz and Irene A. Stegun, eds.
		       Handbook of Mathematical Functions with Formulas,
		       Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function nbdtrik(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nbdtrin(x1, x2, x3[, out])
		
		nbdtrin(k, y, p)
		
		Inverse of `nbdtr` vs `n`.
		
		Returns the inverse with respect to the parameter `n` of
		`y = nbdtr(k, n, p)`, the negative binomial cumulative distribution
		function.
		
		Parameters
		----------
		k : array_like
		    The maximum number of allowed failures (nonnegative int).
		y : array_like
		    The probability of `k` or fewer failures before `n` successes (float).
		p : array_like
		    Probability of success in a single event (float).
		
		Returns
		-------
		n : ndarray
		    The number of successes `n` such that `nbdtr(k, n, p) = y`.
		
		See also
		--------
		nbdtr : Cumulative distribution function of the negative binomial.
		nbdtri : Inverse with respect to `p` of `nbdtr(k, n, p)`.
		nbdtrik : Inverse with respect to `k` of `nbdtr(k, n, p)`.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdfnbn`.
		
		Formula 26.5.26 of [2]_,
		
		.. math::
		    \sum_{j=k + 1}^\infty {{n + j - 1}\choose{j}} p^n (1 - p)^j = I_{1 - p}(k + 1, n),
		
		is used to reduce calculation of the cumulative distribution function to
		that of a regularized incomplete beta :math:`I`.
		
		Computation of `n` involves a seach for a value that produces the desired
		value of `y`.  The search relies on the monotinicity of `y` with `n`.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] Milton Abramowitz and Irene A. Stegun, eds.
		       Handbook of Mathematical Functions with Formulas,
		       Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function nbdtrin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ncfdtr(x1, x2, x3, x4[, out])
		
		ncfdtr(dfn, dfd, nc, f)
		
		Cumulative distribution function of the non-central F distribution.
		
		The non-central F describes the distribution of,
		
		.. math::
		    Z = \frac{X/d_n}{Y/d_d}
		
		where :math:`X` and :math:`Y` are independently distributed, with
		:math:`X` distributed non-central :math:`\chi^2` with noncentrality
		parameter `nc` and :math:`d_n` degrees of freedom, and :math:`Y`
		distributed :math:`\chi^2` with :math:`d_d` degrees of freedom.
		
		Parameters
		----------
		dfn : array_like
		    Degrees of freedom of the numerator sum of squares.  Range (0, inf).
		dfd : array_like
		    Degrees of freedom of the denominator sum of squares.  Range (0, inf).
		nc : array_like
		    Noncentrality parameter.  Should be in range (0, 1e4).
		f : array_like
		    Quantiles, i.e. the upper limit of integration.
		
		Returns
		-------
		cdf : float or ndarray
		    The calculated CDF.  If all inputs are scalar, the return will be a
		    float.  Otherwise it will be an array.
		
		See Also
		--------
		ncdfdtri : Inverse CDF (iCDF) of the non-central F distribution.
		ncdfdtridfd : Calculate dfd, given CDF and iCDF values.
		ncdfdtridfn : Calculate dfn, given CDF and iCDF values.
		ncdfdtrinc : Calculate noncentrality parameter, given CDF, iCDF, dfn, dfd.
		
		Notes
		-----
		Wrapper for the CDFLIB [1]_ Fortran routine `cdffnc`.
		
		The cumulative distribution function is computed using Formula 26.6.20 of
		[2]_:
		
		.. math::
		    F(d_n, d_d, n_c, f) = \sum_{j=0}^\infty e^{-n_c/2} \frac{(n_c/2)^j}{j!} I_{x}(\frac{d_n}{2} + j, \frac{d_d}{2}),
		
		where :math:`I` is the regularized incomplete beta function, and
		:math:`x = f d_n/(f d_n + d_d)`.
		
		The computation time required for this routine is proportional to the
		noncentrality parameter `nc`.  Very large values of this parameter can
		consume immense computer resources.  This is why the search range is
		bounded by 10,000.
		
		References
		----------
		.. [1] Barry Brown, James Lovato, and Kathy Russell,
		       CDFLIB: Library of Fortran Routines for Cumulative Distribution
		       Functions, Inverses, and Other Parameters.
		.. [2] Milton Abramowitz and Irene A. Stegun, eds.
		       Handbook of Mathematical Functions with Formulas,
		       Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		>>> from scipy import special
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Plot the CDF of the non-central F distribution, for nc=0.  Compare with the
		F-distribution from scipy.stats:
		
		>>> x = np.linspace(-1, 8, num=500)
		>>> dfn = 3
		>>> dfd = 2
		>>> ncf_stats = stats.f.cdf(x, dfn, dfd)
		>>> ncf_special = special.ncfdtr(dfn, dfd, 0, x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, ncf_stats, 'b-', lw=3)
		>>> ax.plot(x, ncf_special, 'r-')
		>>> plt.show()
	**/
	static public function ncfdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ncfdtri(x1, x2, x3, x4[, out])
		
		ncfdtri(p, dfn, dfd, nc)
		
		Inverse cumulative distribution function of the non-central F distribution.
		
		See `ncfdtr` for more details.
	**/
	static public function ncfdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ncfdtridfd(x1, x2, x3, x4[, out])
		
		ncfdtridfd(p, f, dfn, nc)
		
		Calculate degrees of freedom (denominator) for the noncentral F-distribution.
		
		See `ncfdtr` for more details.
		
		Notes
		-----
		The value of the cumulative noncentral F distribution is not necessarily
		monotone in either degrees of freedom.  There thus may be two values that
		provide a given CDF value.  This routine assumes monotonicity and will
		find an arbitrary one of the two values.
	**/
	static public function ncfdtridfd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ncfdtridfn(x1, x2, x3, x4[, out])
		
		ncfdtridfn(p, f, dfd, nc)
		
		Calculate degrees of freedom (numerator) for the noncentral F-distribution.
		
		See `ncfdtr` for more details.
		
		Notes
		-----
		The value of the cumulative noncentral F distribution is not necessarily
		monotone in either degrees of freedom.  There thus may be two values that
		provide a given CDF value.  This routine assumes monotonicity and will
		find an arbitrary one of the two values.
	**/
	static public function ncfdtridfn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ncfdtrinc(x1, x2, x3, x4[, out])
		
		ncfdtrinc(p, f, dfn, dfd)
		
		Calculate non-centrality parameter for non-central F distribution.
		
		See `ncfdtr` for more details.
	**/
	static public function ncfdtrinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nctdtr(x1, x2, x3[, out])
		
		nctdtr(df, nc, t)
		
		Cumulative distribution function of the non-central `t` distribution.
		
		Parameters
		----------
		df : array_like
		    Degrees of freedom of the distribution.  Should be in range (0, inf).
		nc : array_like
		    Noncentrality parameter.  Should be in range (-1e6, 1e6).
		t : array_like
		    Quantiles, i.e. the upper limit of integration.
		
		Returns
		-------
		cdf : float or ndarray
		    The calculated CDF.  If all inputs are scalar, the return will be a
		    float.  Otherwise it will be an array.
		
		See Also
		--------
		nctdtrit : Inverse CDF (iCDF) of the non-central t distribution.
		nctdtridf : Calculate degrees of freedom, given CDF and iCDF values.
		nctdtrinc : Calculate non-centrality parameter, given CDF iCDF values.
		
		Examples
		--------
		>>> from scipy import special
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Plot the CDF of the non-central t distribution, for nc=0.  Compare with the
		t-distribution from scipy.stats:
		
		>>> x = np.linspace(-5, 5, num=500)
		>>> df = 3
		>>> nct_stats = stats.t.cdf(x, df)
		>>> nct_special = special.nctdtr(df, 0, x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, nct_stats, 'b-', lw=3)
		>>> ax.plot(x, nct_special, 'r-')
		>>> plt.show()
	**/
	static public function nctdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nctdtridf(x1, x2, x3[, out])
		
		nctdtridf(p, nc, t)
		
		Calculate degrees of freedom for non-central t distribution.
		
		See `nctdtr` for more details.
		
		Parameters
		----------
		p : array_like
		    CDF values, in range (0, 1].
		nc : array_like
		    Noncentrality parameter.  Should be in range (-1e6, 1e6).
		t : array_like
		    Quantiles, i.e. the upper limit of integration.
	**/
	static public function nctdtridf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nctdtrinc(x1, x2, x3[, out])
		
		nctdtrinc(df, p, t)
		
		Calculate non-centrality parameter for non-central t distribution.
		
		See `nctdtr` for more details.
		
		Parameters
		----------
		df : array_like
		    Degrees of freedom of the distribution.  Should be in range (0, inf).
		p : array_like
		    CDF values, in range (0, 1].
		t : array_like
		    Quantiles, i.e. the upper limit of integration.
	**/
	static public function nctdtrinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nctdtrit(x1, x2, x3[, out])
		
		nctdtrit(df, nc, p)
		
		Inverse cumulative distribution function of the non-central t distribution.
		
		See `nctdtr` for more details.
		
		Parameters
		----------
		df : array_like
		    Degrees of freedom of the distribution.  Should be in range (0, inf).
		nc : array_like
		    Noncentrality parameter.  Should be in range (-1e6, 1e6).
		p : array_like
		    CDF values, in range (0, 1].
	**/
	static public function nctdtrit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ndtr(x[, out])
		
		ndtr(x)
		
		Gaussian cumulative distribution function.
		
		Returns the area under the standard Gaussian probability
		density function, integrated from minus infinity to `x`
		
		.. math::
		
		   \frac{1}{\sqrt{2\pi}} \int_{-\infty}^x \exp(-t^2/2) dt
		
		Parameters
		----------
		x : array_like, real or complex
		    Argument
		
		Returns
		-------
		ndarray
		    The value of the normal CDF evaluated at `x`
		
		See Also
		--------
		erf
		erfc
		scipy.stats.norm
		log_ndtr
	**/
	static public function ndtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ndtri(x[, out])
		
		ndtri(y)
		
		Inverse of `ndtr` vs x
		
		Returns the argument x for which the area under the Gaussian
		probability density function (integrated from minus infinity to `x`)
		is equal to y.
	**/
	static public function ndtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nrdtrimn(x1, x2, x3[, out])
		
		nrdtrimn(p, x, std)
		
		Calculate mean of normal distribution given other params.
		
		Parameters
		----------
		p : array_like
		    CDF values, in range (0, 1].
		x : array_like
		    Quantiles, i.e. the upper limit of integration.
		std : array_like
		    Standard deviation.
		
		Returns
		-------
		mn : float or ndarray
		    The mean of the normal distribution.
		
		See Also
		--------
		nrdtrimn, ndtr
	**/
	static public function nrdtrimn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nrdtrisd(x1, x2, x3[, out])
		
		nrdtrisd(p, x, mn)
		
		Calculate standard deviation of normal distribution given other params.
		
		Parameters
		----------
		p : array_like
		    CDF values, in range (0, 1].
		x : array_like
		    Quantiles, i.e. the upper limit of integration.
		mn : float or ndarray
		    The mean of the normal distribution.
		
		Returns
		-------
		std : array_like
		    Standard deviation.
		
		See Also
		--------
		nrdtristd, ndtr
	**/
	static public function nrdtrisd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_ang1(x1, x2, x3, x4[, out1, out2])
		
		obl_ang1(m, n, c, x)
		
		Oblate spheroidal angular function of the first kind and its derivative
		
		Computes the oblate spheroidal angular function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_ang1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_ang1_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		obl_ang1_cv(m, n, c, cv, x)
		
		Oblate spheroidal angular function obl_ang1 for precomputed characteristic value
		
		Computes the oblate spheroidal angular function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_ang1_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_cv(x1, x2, x3[, out])
		
		obl_cv(m, n, c)
		
		Characteristic value of oblate spheroidal function
		
		Computes the characteristic value of oblate spheroidal wave
		functions of order `m`, `n` (n>=m) and spheroidal parameter `c`.
	**/
	static public function obl_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_rad1(x1, x2, x3, x4[, out1, out2])
		
		obl_rad1(m, n, c, x)
		
		Oblate spheroidal radial function of the first kind and its derivative
		
		Computes the oblate spheroidal radial function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_rad1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_rad1_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		obl_rad1_cv(m, n, c, cv, x)
		
		Oblate spheroidal radial function obl_rad1 for precomputed characteristic value
		
		Computes the oblate spheroidal radial function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_rad1_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_rad2(x1, x2, x3, x4[, out1, out2])
		
		obl_rad2(m, n, c, x)
		
		Oblate spheroidal radial function of the second kind and its derivative.
		
		Computes the oblate spheroidal radial function of the second kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_rad2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		obl_rad2_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		obl_rad2_cv(m, n, c, cv, x)
		
		Oblate spheroidal radial function obl_rad2 for precomputed characteristic value
		
		Computes the oblate spheroidal radial function of the second kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function obl_rad2_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pbdv(x1, x2[, out1, out2])
		
		pbdv(v, x)
		
		Parabolic cylinder function D
		
		Returns (d, dp) the parabolic cylinder function Dv(x) in d and the
		derivative, Dv'(x) in dp.
		
		Returns
		-------
		d
		    Value of the function
		dp
		    Value of the derivative vs x
	**/
	static public function pbdv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pbvv(x1, x2[, out1, out2])
		
		pbvv(v, x)
		
		Parabolic cylinder function V
		
		Returns the parabolic cylinder function Vv(x) in v and the
		derivative, Vv'(x) in vp.
		
		Returns
		-------
		v
		    Value of the function
		vp
		    Value of the derivative vs x
	**/
	static public function pbvv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pbwa(x1, x2[, out1, out2])
		
		pbwa(a, x)
		
		Parabolic cylinder function W
		
		Returns the parabolic cylinder function W(a, x) in w and the
		derivative, W'(a, x) in wp.
		
		.. warning::
		
		   May not be accurate for large (>5) arguments in a and/or x.
		
		Returns
		-------
		w
		    Value of the function
		wp
		    Value of the derivative vs x
	**/
	static public function pbwa(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pdtr(x1, x2[, out])
		
		pdtr(k, m)
		
		Poisson cumulative distribution function
		
		Returns the sum of the first `k` terms of the Poisson distribution:
		sum(exp(-m) * m**j / j!, j=0..k) = gammaincc( k+1, m).  Arguments
		must both be positive and `k` an integer.
	**/
	static public function pdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pdtrc(x1, x2[, out])
		
		pdtrc(k, m)
		
		Poisson survival function
		
		Returns the sum of the terms from k+1 to infinity of the Poisson
		distribution: sum(exp(-m) * m**j / j!, j=k+1..inf) = gammainc(
		k+1, m).  Arguments must both be positive and `k` an integer.
	**/
	static public function pdtrc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pdtri(x1, x2[, out])
		
		pdtri(k, y)
		
		Inverse to `pdtr` vs m
		
		Returns the Poisson variable `m` such that the sum from 0 to `k` of
		the Poisson density is equal to the given probability `y`:
		calculated by gammaincinv(k+1, y). `k` must be a nonnegative
		integer and `y` between 0 and 1.
	**/
	static public function pdtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pdtrik(x1, x2[, out])
		
		pdtrik(p, m)
		
		Inverse to `pdtr` vs k
		
		Returns the quantile k such that ``pdtr(k, m) = p``
	**/
	static public function pdtrik(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		poch(x1, x2[, out])
		
		poch(z, m)
		
		Rising factorial (z)_m
		
		The Pochhammer symbol (rising factorial), is defined as::
		
		    (z)_m = gamma(z + m) / gamma(z)
		
		For positive integer `m` it reads::
		
		    (z)_m = z * (z + 1) * ... * (z + m - 1)
	**/
	static public function poch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_ang1(x1, x2, x3, x4[, out1, out2])
		
		pro_ang1(m, n, c, x)
		
		Prolate spheroidal angular function of the first kind and its derivative
		
		Computes the prolate spheroidal angular function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_ang1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_ang1_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		pro_ang1_cv(m, n, c, cv, x)
		
		Prolate spheroidal angular function pro_ang1 for precomputed characteristic value
		
		Computes the prolate spheroidal angular function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_ang1_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_cv(x1, x2, x3[, out])
		
		pro_cv(m, n, c)
		
		Characteristic value of prolate spheroidal function
		
		Computes the characteristic value of prolate spheroidal wave
		functions of order `m`, `n` (n>=m) and spheroidal parameter `c`.
	**/
	static public function pro_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_rad1(x1, x2, x3, x4[, out1, out2])
		
		pro_rad1(m, n, c, x)
		
		Prolate spheroidal radial function of the first kind and its derivative
		
		Computes the prolate spheroidal radial function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_rad1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_rad1_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		pro_rad1_cv(m, n, c, cv, x)
		
		Prolate spheroidal radial function pro_rad1 for precomputed characteristic value
		
		Computes the prolate spheroidal radial function of the first kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_rad1_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_rad2(x1, x2, x3, x4[, out1, out2])
		
		pro_rad2(m, n, c, x)
		
		Prolate spheroidal radial function of the secon kind and its derivative
		
		Computes the prolate spheroidal radial function of the second kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_rad2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pro_rad2_cv(x1, x2, x3, x4, x5[, out1, out2])
		
		pro_rad2_cv(m, n, c, cv, x)
		
		Prolate spheroidal radial function pro_rad2 for precomputed characteristic value
		
		Computes the prolate spheroidal radial function of the second kind
		and its derivative (with respect to `x`) for mode parameters m>=0
		and n>=m, spheroidal parameter `c` and ``|x| < 1.0``. Requires
		pre-computed characteristic value.
		
		Returns
		-------
		s
		    Value of the function
		sp
		    Value of the derivative vs x
	**/
	static public function pro_rad2_cv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pseudo_huber(x1, x2[, out])
		
		pseudo_huber(delta, r)
		
		Pseudo-Huber loss function.
		
		.. math:: \mathrm{pseudo\_huber}(\delta, r) = \delta^2 \left( \sqrt{ 1 + \left( \frac{r}{\delta} \right)^2 } - 1 \right)
		
		Parameters
		----------
		delta : ndarray
		    Input array, indicating the soft quadratic vs. linear loss changepoint.
		r : ndarray
		    Input array, possibly representing residuals.
		
		Returns
		-------
		res : ndarray
		    The computed Pseudo-Huber loss function values.
		
		Notes
		-----
		This function is convex in :math:`r`.
		
		.. versionadded:: 0.15.0
	**/
	static public function pseudo_huber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		psi(x[, out])
		
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
		For large values not close to the negative real axis ``psi`` is
		computed using the asymptotic series (5.11.2) from [1]_. For small
		arguments not close to the negative real axis the recurrence
		relation (5.5.2) from [1]_ is used until the argument is large
		enough to use the asymptotic series. For values close to the
		negative real axis the reflection formula (5.5.4) from [1]_ is
		used first.  Note that ``psi`` has a family of zeros on the
		negative real axis which occur between the poles at nonpositive
		integers. Around the zeros the reflection formula suffers from
		cancellation and the implementation loses precision. The sole
		positive zero and the first negative zero, however, are handled
		separately by precomputing series expansions using [2]_, so the
		function should maintain full accuracy around the origin.
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/5
		.. [2] Fredrik Johansson and others.
		       "mpmath: a Python library for arbitrary-precision floating-point arithmetic"
		       (Version 0.19) http://mpmath.org/
	**/
	static public function psi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		radian(x1, x2, x3[, out])
		
		radian(d, m, s)
		
		Convert from degrees to radians
		
		Returns the angle given in (d)egrees, (m)inutes, and (s)econds in
		radians.
	**/
	static public function radian(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rel_entr(x1, x2[, out])
		
		rel_entr(x, y)
		
		Elementwise function for computing relative entropy.
		
		.. math:: \mathrm{rel\_entr}(x, y) = \begin{cases} x \log(x / y) & x > 0, y > 0 \\ 0 & x = 0, y \ge 0 \\ \infty & \text{otherwise} \end{cases}
		
		Parameters
		----------
		x : ndarray
		    First input array.
		y : ndarray
		    Second input array.
		
		Returns
		-------
		res : ndarray
		    Output array.
		
		See Also
		--------
		entr, kl_div
		
		Notes
		-----
		This function is jointly convex in x and y.
		
		.. versionadded:: 0.15.0
	**/
	static public function rel_entr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rgamma(x[, out])
		
		rgamma(z)
		
		Gamma function inverted
		
		Returns ``1/gamma(x)``
	**/
	static public function rgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		round(x[, out])
		
		round(x)
		
		Round to nearest integer
		
		Returns the nearest integer to `x` as a double precision floating
		point result.  If `x` ends in 0.5 exactly, the nearest even integer
		is chosen.
	**/
	static public function round(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		shichi(x[, out1, out2])
		
		shichi(x)
		
		Hyperbolic sine and cosine integrals
		
		Returns
		-------
		shi
		    ``integral(sinh(t)/t, t=0..x)``
		chi
		    ``eul + ln x + integral((cosh(t)-1)/t, t=0..x)``
		    where ``eul`` is Euler's constant.
	**/
	static public function shichi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sici(x[, out1, out2])
		
		sici(x)
		
		Sine and cosine integrals
		
		Returns
		-------
		si
		    ``integral(sin(t)/t, t=0..x)``
		ci
		    ``eul + ln x + integral((cos(t) - 1)/t, t=0..x)``
		    where ``eul`` is Euler's constant.
	**/
	static public function sici(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sindg(x[, out])
		
		sindg(x)
		
		Sine of angle given in degrees
	**/
	static public function sindg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		smirnov(x1, x2[, out])
		
		smirnov(n, e)
		
		Kolmogorov-Smirnov complementary cumulative distribution function
		
		Returns the exact Kolmogorov-Smirnov complementary cumulative
		distribution function (Dn+ or Dn-) for a one-sided test of
		equality between an empirical and a theoretical distribution. It
		is equal to the probability that the maximum difference between a
		theoretical distribution and an empirical one based on `n` samples
		is greater than e.
	**/
	static public function smirnov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		smirnovi(x1, x2[, out])
		
		smirnovi(n, y)
		
		Inverse to `smirnov`
		
		Returns ``e`` such that ``smirnov(n, e) = y``.
	**/
	static public function smirnovi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spence(x[, out])
		
		spence(z)
		
		Spence's function, also known as the dilogarithm. It is defined to
		be
		
		.. math::
		  \int_0^z \frac{\log(t)}{1 - t}dt
		
		for complex :math:`z`, where the contour of integration is taken
		to avoid the branch cut of the logarithm. Spence's function is
		analytic everywhere except the negative real axis where it has a
		branch cut.
		
		Note that there is a different convention which defines Spence's
		function by the integral
		
		.. math::
		  -\int_0^z \frac{\log(1 - t)}{t}dt;
		
		this is our ``spence(1 - z)``.
	**/
	static public function spence(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sph_harm(x1, x2, x3, x4[, out])
		
		sph_harm(m, n, theta, phi)
		
		Compute spherical harmonics.
		
		.. math:: Y^m_n(\theta,\phi) = \sqrt{\frac{2n+1}{4\pi}\frac{(n-m)!}{(n+m)!}} e^{i m \theta} P^m_n(\cos(\phi))
		
		Parameters
		----------
		m : int
		   ``|m| <= n``; the order of the harmonic.
		n : int
		   where `n` >= 0; the degree of the harmonic.  This is often called
		   ``l`` (lower case L) in descriptions of spherical harmonics.
		theta : float
		   [0, 2*pi]; the azimuthal (longitudinal) coordinate.
		phi : float
		   [0, pi]; the polar (colatitudinal) coordinate.
		
		Returns
		-------
		y_mn : complex float
		   The harmonic :math:`Y^m_n` sampled at `theta` and `phi`
		
		Notes
		-----
		There are different conventions for the meaning of input arguments
		`theta` and `phi`.  We take `theta` to be the azimuthal angle and
		`phi` to be the polar angle.  It is common to see the opposite
		convention - that is `theta` as the polar angle and `phi` as the
		azimuthal angle.
		
		References
		----------
		.. [1] Digital Library of Mathematical Functions, 14.30. http://dlmf.nist.gov/14.30
	**/
	static public function sph_harm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stdtr(x1, x2[, out])
		
		stdtr(df, t)
		
		Student t distribution cumulative density function
		
		Returns the integral from minus infinity to t of the Student t
		distribution with df > 0 degrees of freedom::
		
		   gamma((df+1)/2)/(sqrt(df*pi)*gamma(df/2)) *
		   integral((1+x**2/df)**(-df/2-1/2), x=-inf..t)
	**/
	static public function stdtr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stdtridf(x1, x2[, out])
		
		stdtridf(p, t)
		
		Inverse of `stdtr` vs df
		
		Returns the argument df such that stdtr(df, t) is equal to `p`.
	**/
	static public function stdtridf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stdtrit(x1, x2[, out])
		
		stdtrit(df, p)
		
		Inverse of `stdtr` vs `t`
		
		Returns the argument `t` such that stdtr(df, t) is equal to `p`.
	**/
	static public function stdtrit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		struve(x1, x2[, out])
		
		struve(v, x)
		
		Struve function.
		
		Return the value of the Struve function of order `v` at `x`.  The Struve
		function is defined as,
		
		.. math::
		    H_v(x) = (z/2)^{v + 1} \sum_{n=0}^\infty \frac{(-1)^n (z/2)^{2n}}{\Gamma(n + \frac{3}{2}) \Gamma(n + v + \frac{3}{2})},
		
		where :math:`\Gamma` is the gamma function.
		
		Parameters
		----------
		v : array_like
		    Order of the Struve function (float).
		x : array_like
		    Argument of the Struve function (float; must be positive unless `v` is
		    an integer).
		
		Returns
		-------
		H : ndarray
		    Value of the Struve function of order `v` at `x`.
		
		Notes
		-----
		Three methods discussed in [1]_ are used to evaluate the Struve function:
		
		- power series
		- expansion in Bessel functions (if :math:`|z| < |v| + 20`)
		- asymptotic large-z expansion (if :math:`z \geq 0.7v + 12`)
		
		Rounding errors are estimated based on the largest terms in the sums, and
		the result associated with the smallest error is returned.
		
		See also
		--------
		modstruve
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/11
	**/
	static public function struve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tandg(x[, out])
		
		tandg(x)
		
		Tangent of angle x given in degrees.
	**/
	static public function tandg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tklmbda(x1, x2[, out])
		
		tklmbda(x, lmbda)
		
		Tukey-Lambda cumulative distribution function
	**/
	static public function tklmbda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wofz(x[, out])
		
		wofz(z)
		
		Faddeeva function
		
		Returns the value of the Faddeeva function for complex argument::
		
		    exp(-z**2) * erfc(-i*z)
		
		See Also
		--------
		dawsn, erf, erfc, erfcx, erfi
		
		References
		----------
		.. [1] Steven G. Johnson, Faddeeva W function implementation.
		   http://ab-initio.mit.edu/Faddeeva
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-3, 3)
		>>> plt.plot(x, special.wofz(x))
		>>> plt.xlabel('$x$')
		>>> plt.ylabel('$wofz(x)$')
		>>> plt.show()
	**/
	static public function wofz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xlog1py(x1, x2[, out])
		
		xlog1py(x, y)
		
		Compute ``x*log1p(y)`` so that the result is 0 if ``x = 0``.
		
		Parameters
		----------
		x : array_like
		    Multiplier
		y : array_like
		    Argument
		
		Returns
		-------
		z : array_like
		    Computed x*log1p(y)
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
	**/
	static public function xlog1py(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xlogy(x1, x2[, out])
		
		xlogy(x, y)
		
		Compute ``x*log(y)`` so that the result is 0 if ``x = 0``.
		
		Parameters
		----------
		x : array_like
		    Multiplier
		y : array_like
		    Argument
		
		Returns
		-------
		z : array_like
		    Computed x*log(y)
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
	**/
	static public function xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y0(x[, out])
		
		y0(x)
		
		Bessel function of the second kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float).
		
		Returns
		-------
		Y : ndarray
		    Value of the Bessel function of the second kind of order 0 at `x`.
		
		Notes
		-----
		
		The domain is divided into the intervals [0, 5] and (5, infinity). In the
		first interval a rational approximation :math:`R(x)` is employed to
		compute,
		
		.. math::
		
		    Y_0(x) = R(x) + \frac{2 \log(x) J_0(x)}{\pi},
		
		where :math:`J_0` is the Bessel function of the first kind of order 0.
		
		In the second interval, the Hankel asymptotic expansion is employed with
		two rational functions of degree 6/6 and 7/7.
		
		This function is a wrapper for the Cephes [1]_ routine `y0`.
		
		See also
		--------
		j0
		yv
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function y0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y1(x[, out])
		
		y1(x)
		
		Bessel function of the second kind of order 1.
		
		Parameters
		----------
		x : array_like
		    Argument (float).
		
		Returns
		-------
		Y : ndarray
		    Value of the Bessel function of the second kind of order 1 at `x`.
		
		Notes
		-----
		
		The domain is divided into the intervals [0, 8] and (8, infinity). In the
		first interval a 25 term Chebyshev expansion is used, and computing
		:math:`J_1` (the Bessel function of the first kind) is required. In the
		second, the asymptotic trigonometric representation is employed using two
		rational functions of degree 5/5.
		
		This function is a wrapper for the Cephes [1]_ routine `y1`.
		
		See also
		--------
		j1
		yn
		yv
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function y1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yn(x1, x2[, out])
		
		yn(n, x)
		
		Bessel function of the second kind of integer order and real argument.
		
		Parameters
		----------
		n : array_like
		    Order (integer).
		z : array_like
		    Argument (float).
		
		Returns
		-------
		Y : ndarray
		    Value of the Bessel function, :math:`Y_n(x)`.
		
		Notes
		-----
		Wrapper for the Cephes [1]_ routine `yn`.
		
		The function is evaluated by forward recurrence on `n`, starting with
		values computed by the Cephes routines `y0` and `y1`. If `n = 0` or 1,
		the routine for `y0` or `y1` is called directly.
		
		See also
		--------
		yv : For real order and real or complex argument.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function yn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yv(x1, x2[, out])
		
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
		yve(x1, x2[, out])
		
		yve(v, z)
		
		Exponentially scaled Bessel function of the second kind of real order.
		
		Returns the exponentially scaled Bessel function of the second
		kind of real order `v` at complex `z`::
		
		    yve(v, z) = yv(v, z) * exp(-abs(z.imag))
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		Y : ndarray
		    Value of the exponentially scaled Bessel function.
		
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
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function yve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zetac(x[, out])
		
		zetac(x)
		
		Riemann zeta function minus 1.
		
		This function is defined as
		
		.. math:: \zeta(x) = \sum_{k=2}^{\infty} 1 / k^x,
		
		where ``x > 1``.
		
		See Also
		--------
		zeta
	**/
	static public function zetac(args:haxe.extern.Rest<Dynamic>):Dynamic;
}