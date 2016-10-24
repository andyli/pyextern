/* This file is generated, do not edit! */
package scipy.special;
@:pythonImport("scipy.special") extern class Special_Module {
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
		Arithmetic, Geometric Mean.
		
		Start with a_0=a and b_0=b and iteratively compute
		
		a_{n+1} = (a_n+b_n)/2
		b_{n+1} = sqrt(a_n*b_n)
		
		until a_n=b_n.   The result is agm(a, b)
		
		agm(a, b)=agm(b, a)
		agm(a, a) = a
		min(a, b) < agm(a, b) < max(a, b)
	**/
	static public function agm(a:Dynamic, b:Dynamic):Dynamic;
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
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function ai_zeros(nt:Dynamic):Dynamic;
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
		Compute nt zeros of the Kelvin function bei(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function bei_zeros(nt:Dynamic):Dynamic;
	/**
		beip(x[, out])
		
		beip(x)
		
		Derivative of the Kelvin function `bei`
	**/
	static public function beip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function bei'(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function beip_zeros(nt:Dynamic):Dynamic;
	/**
		ber(x[, out])
		
		ber(x)
		
		Kelvin function ber.
	**/
	static public function ber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ber(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function ber_zeros(nt:Dynamic):Dynamic;
	/**
		Bernoulli numbers B0..Bn (inclusive).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function bernoulli(n:Dynamic):Dynamic;
	/**
		berp(x[, out])
		
		berp(x)
		
		Derivative of the Kelvin function `ber`
	**/
	static public function berp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ber'(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function berp_zeros(nt:Dynamic):Dynamic;
	/**
		`_bessel_diff_formula` is deprecated!
		bessel_diff_formula is a private function, do not use it!
	**/
	static public function bessel_diff_formula(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function bi_zeros(nt:Dynamic):Dynamic;
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
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`C_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = 1/\sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function c_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		cbrt(x[, out])
		
		cbrt(x)
		
		Cube root of `x`
	**/
	static public function cbrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Gegenbauer quadrature.
		
		Computes the sample points and weights for Gauss-Gegenbauer quadrature.
		The sample points are the roots of the n-th degree Gegenbauer polynomial,
		:math:`C^{\alpha}_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x^2)^{\alpha - 1/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -0.5
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function cg_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
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
		Return n-th order Chebyshev polynomial of first kind, :math:`C_n(x)`. 
		Orthogonal over :math:`[-2, 2]` with weight function
		:math:`f(x) = 1/\sqrt{1 - (x/2)^2}`
	**/
	static public function chebyc(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of second kind, :math:`S_n(x)`.
		Orthogonal over :math:`[-2, 2]` with weight function
		:math:`f(x) = \sqrt{1 - (x/2)^2}`.
	**/
	static public function chebys(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of first kind, Tn(x).  Orthogonal
		over [-1,1] with weight function (1-x**2)**(-1/2).
	**/
	static public function chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of second kind, Un(x).  Orthogonal
		over [-1,1] with weight function (1-x**2)**(1/2).
	**/
	static public function chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
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
		Associated Legendre function of the first kind, Pmn(z).
		
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/14.21
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
		val : int, ndarray
		    The total number of combinations.
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120L
		>>> comb(10, 3, exact=True, repetition=True)
		220L
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
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
	static public function digamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Periodic sinc function, also called the Dirichlet function.
		
		The Dirichlet function is defined as::
		
		    diric(x) = sin(x * n/2) / (n * sin(x / 2)),
		
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
		
		Now find the same values (up to sign) using `diric`.  We multiply
		by `k` to account for the different scaling conventions of
		`numpy.fft.fft` and `diric`:
		
		>>> theta = np.linspace(0, 2*np.pi, m, endpoint=False)
		>>> k * special.diric(theta, k)
		array([ 3.        ,  2.41421356,  1.        , -0.41421356, -1.        ,
		       -0.41421356,  1.        ,  2.41421356])
	**/
	static public function diric(x:Dynamic, n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Ellipsoidal harmonic functions E^p_n(l)
		
		These are also known as Lame functions of the first kind, and are
		solutions to the Lame equation:
		
		.. math:: (s^2 - h^2)(s^2 - k^2)E''(s) + s(2s^2 - h^2 - k^2)E'(s) + (a - q s^2)E(s) = 0
		
		where :math:`q = (n+1)n` and :math:`a` is the eigenvalue (not
		returned) corresponding to the solutions.
		
		Parameters
		----------
		h2 : float
		    ``h**2``
		k2 : float
		    ``k**2``; should be larger than ``h**2``
		n : int
		    Degree
		s : float
		    Coordinate
		p : int
		    Order, can range between [1,2n+1]
		signm : {1, -1}, optional
		    Sign of prefactor of functions. Can be +/-1. See Notes.
		signn : {1, -1}, optional
		    Sign of prefactor of functions. Can be +/-1. See Notes.
		
		Returns
		-------
		E : float
		    the harmonic :math:`E^p_n(s)`
		
		See Also
		--------
		ellip_harm_2, ellip_normal
		
		Notes
		-----
		The geometric intepretation of the ellipsoidal functions is
		explained in [2]_, [3]_, [4]_.  The `signm` and `signn` arguments control the
		sign of prefactors for functions according to their type::
		
		    K : +1
		    L : signm
		    M : signn
		    N : signm*signn
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Digital Libary of Mathematical Functions 29.12
		   http://dlmf.nist.gov/29.12
		.. [2] Bardhan and Knepley, "Computational science and
		   re-discovery: open-source implementations of
		   ellipsoidal harmonics for problems in potential theory",
		   Comput. Sci. Disc. 5, 014006 (2012)
		   doi:10.1088/1749-4699/5/1/014006
		.. [3] David J.and Dechambre P, "Computation of Ellipsoidal
		   Gravity Field Harmonics for small solar system bodies"
		   pp. 30-36, 2000
		.. [4] George Dassios, "Ellipsoidal Harmonics: Theory and Applications"
		   pp. 418, 2012
		
		Examples
		--------
		>>> from scipy.special import ellip_harm
		>>> w = ellip_harm(5,8,1,1,2.5)
		>>> w
		2.5
		
		Check that the functions indeed are solutions to the Lame equation:
		
		>>> from scipy.interpolate import UnivariateSpline
		>>> def eigenvalue(f, df, ddf):
		...     r = ((s**2 - h**2)*(s**2 - k**2)*ddf + s*(2*s**2 - h**2 - k**2)*df - n*(n+1)*s**2*f)/f
		...     return -r.mean(), r.std()
		>>> s = np.linspace(0.1, 10, 200)
		>>> k, h, n, p = 8.0, 2.2, 3, 2
		>>> E = ellip_harm(h**2, k**2, n, p, s)
		>>> E_spl = UnivariateSpline(s, E)
		>>> a, a_err = eigenvalue(E_spl(s), E_spl(s,1), E_spl(s,2))
		>>> a, a_err
		(583.44366156701483, 6.4580890640310646e-11)
	**/
	static public function ellip_harm(h2:Dynamic, k2:Dynamic, n:Dynamic, p:Dynamic, s:Dynamic, ?signm:Dynamic, ?signn:Dynamic):Float;
	/**
		Ellipsoidal harmonic functions F^p_n(l)
		
		These are also known as Lame functions of the second kind, and are
		solutions to the Lame equation:
		
		.. math:: (s^2 - h^2)(s^2 - k^2)F''(s) + s(2s^2 - h^2 - k^2)F'(s) + (a - q s^2)F(s) = 0
		
		where :math:`q = (n+1)n` and :math:`a` is the eigenvalue (not
		returned) corresponding to the solutions.
		
		Parameters
		----------
		h2 : float
		    ``h**2``
		k2 : float
		    ``k**2``; should be larger than ``h**2``
		n : int
		    Degree.
		p : int
		    Order, can range between [1,2n+1].
		s : float
		    Coordinate
		
		Returns
		-------
		F : float
		    The harmonic :math:`F^p_n(s)`
		
		Notes
		-----
		Lame functions of the second kind are related to the functions of the first kind:
		
		.. math::
		
		   F^p_n(s)=(2n + 1)E^p_n(s)\int_{0}^{1/s}\frac{du}{(E^p_n(1/u))^2\sqrt{(1-u^2k^2)(1-u^2h^2)}}
		
		.. versionadded:: 0.15.0
		
		See Also
		--------
		ellip_harm, ellip_normal
		
		Examples
		--------
		>>> from scipy.special import ellip_harm_2
		>>> w = ellip_harm_2(5,8,2,1,10)
		>>> w
		0.00108056853382
	**/
	static public function ellip_harm_2(h2:Dynamic, k2:Dynamic, n:Dynamic, p:Dynamic, s:Dynamic):Float;
	/**
		Ellipsoidal harmonic normalization constants gamma^p_n
		
		The normalization constant is defined as
		
		.. math::
		
		   \gamma^p_n=8\int_{0}^{h}dx\int_{h}^{k}dy\frac{(y^2-x^2)(E^p_n(y)E^p_n(x))^2}{\sqrt((k^2-y^2)(y^2-h^2)(h^2-x^2)(k^2-x^2)}
		
		Parameters
		----------
		h2 : float
		    ``h**2``
		k2 : float
		    ``k**2``; should be larger than ``h**2``
		n : int
		    Degree.
		p : int
		    Order, can range between [1,2n+1].
		
		Returns
		-------
		gamma : float
		    The normalization constant :math:`\gamma^p_n`
		
		See Also
		--------
		ellip_harm, ellip_harm_2
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		Examples
		--------
		>>> from scipy.special import ellip_normal
		>>> w = ellip_normal(5,8,3,7)
		>>> w
		1723.38796997
	**/
	static public function ellip_normal(h2:Dynamic, k2:Dynamic, n:Dynamic, p:Dynamic):Float;
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
		Complete elliptic integral of the first kind.
		
		This function is defined as
		
		.. math:: K(m) = \int_0^{\pi/2} [1 - m \sin(t)^2]^{-1/2} dt
		
		Parameters
		----------
		m : array_like
		    The parameter of the elliptic integral.
		
		Returns
		-------
		K : array_like
		    Value of the elliptic integral.
		
		Notes
		-----
		For more precision around point m = 1, use `ellipkm1`, which this
		function calls.
		
		See Also
		--------
		ellipkm1 : Complete elliptic integral of the first kind around m = 1
		ellipkinc : Incomplete elliptic integral of the first kind
		ellipe : Complete elliptic integral of the second kind
		ellipeinc : Incomplete elliptic integral of the second kind
	**/
	static public function ellipk(m:Dynamic):Dynamic;
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
		Compute nt complex zeros of error function erf(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function erf_zeros(nt:Dynamic):Dynamic;
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
		Inverse function for erfc.
		    
	**/
	static public function erfcinv(y:Dynamic):Dynamic;
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
		Inverse function for erf.
		    
	**/
	static public function erfinv(y:Dynamic):Dynamic;
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
		Euler numbers E0..En (inclusive).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function euler(n:Dynamic):Dynamic;
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
		120L
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
		105L
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
		120L
		>>> factorialk(5, 3, exact=True)
		10L
	**/
	static public function factorialk(n:Dynamic, k:Dynamic, ?exact:Dynamic):Int;
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
		Compute nt complex zeros of sine and cosine Fresnel integrals S(z) and C(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function fresnel_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt complex zeros of cosine Fresnel integral C(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function fresnelc_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt complex zeros of sine Fresnel integral S(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function fresnels_zeros(nt:Dynamic):Dynamic;
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
		Logarithm of the absolute value of the Gamma function for real inputs.
		
		Parameters
		----------
		x : array-like
		    Values on the real line at which to compute ``gammaln``
		
		Returns
		-------
		gammaln : ndarray
		    Values of ``gammaln`` at x.
		
		See Also
		--------
		gammasgn : sign of the gamma function
		loggamma : principal branch of the logarithm of the gamma function
		
		Notes
		-----
		When used in conjunction with `gammasgn`, this function is useful
		for working in logspace on the real axis without having to deal with
		complex numbers, via the relation ``exp(gammaln(x)) = gammasgn(x)*gamma(x)``.
		
		Note that `gammaln` currently accepts complex-valued inputs, but it is not
		the same function as for real-valued inputs, and the branch is not
		well-defined --- using `gammaln` with complex is deprecated and will be
		disallowed in future Scipy versions.
		
		For complex-valued log-gamma, use `loggamma` instead of `gammaln`.
	**/
	static public function gammaln(x:Dynamic):Dynamic;
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
		Return the nth order Gegenbauer (ultraspherical) polynomial,
		C^(alpha)_n(x), orthogonal over [-1,1] with weighting function
		(1-x**2)**(alpha-1/2) with alpha > -1/2
	**/
	static public function gegenbauer(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order generalized (associated) Laguerre polynomial,
		L^(alpha)_n(x), orthogonal over [0,inf) with weighting function
		exp(-x) x**alpha with alpha > -1
	**/
	static public function genlaguerre(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Compute nth derivative of Hankel function H1v(z) with respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Hankel function
		z : complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.6.E7
	**/
	static public function h1vp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute nth derivative of Hankel function H2v(z) with respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Hankel function
		z : complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.6.E7
	**/
	static public function h2vp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is applied
		which computes nodes and weights in a numerically stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		he_roots
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. ArXiv 1410.5286.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   doi: 10.1093/imanum/drv002
	**/
	static public function h_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
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
		Gauss-Hermite (statistician's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`He_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-(x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is used
		which computes nodes and weights in a numerical stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
	**/
	static public function he_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return the nth order Hermite polynomial, H_n(x), orthogonal over
		(-inf,inf) with weighting function exp(-x**2)
	**/
	static public function hermite(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return the nth order normalized Hermite polynomial, He_n(x), orthogonal
		over (-inf,inf) with weighting function exp(-(x/2)**2)
	**/
	static public function hermitenorm(n:Dynamic, ?monic:Dynamic):Dynamic;
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
		Compute nth derivative of modified Bessel function Iv(z) with respect
		to `z`.
		
		Parameters
		----------
		v : array_like of float
		    Order of Bessel function
		z : array_like of complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.29.5 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 6.
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.29.E5
	**/
	static public function ivp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
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
		Gauss-Jacobi quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi quadrature. The
		sample points are the roots of the n-th degree Jacobi polynomial,
		:math:`P^{\alpha, \beta}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x)^{\alpha} (1 + x)^{\beta}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function j_roots(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Returns the nth order Jacobi polynomial, P^(alpha,beta)_n(x)
		orthogonal over [-1,1] with weighting function
		(1-x)**alpha (1+x)**beta with alpha,beta > -1.
	**/
	static public function jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?monic:Dynamic):Dynamic;
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
		Compute zeros of integer-order Bessel function Jn(x).
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function jnjnp_zeros(nt:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel function derivative Jn'(x).
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function jnp_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of Bessel functions Jn(x), Jn'(x), Yn(x), and Yn'(x).
		
		Returns 4 arrays of length `nt`, corresponding to the first `nt` zeros of
		Jn(x), Jn'(x), Yn(x), and Yn'(x), respectively.
		
		Parameters
		----------
		n : int
		    Order of the Bessel functions
		nt : int
		    Number (<=1200) of zeros to compute
		
		See jn_zeros, jnp_zeros, yn_zeros, ynp_zeros to get separate arrays.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function jnyn_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the n-th degree shifted
		Jacobi polynomial, :math:`G^{p,q}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[0, 1]` with weight function
		:math:`f(x) = (1 - x)^{p-q} x^{q-1}`
		
		Parameters
		----------
		n : int
		    quadrature order
		p1 : float
		    (p1 - q1) must be > -1
		q1 : float
		    q1 must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function js_roots(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
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
		Compute nth derivative of Bessel function Jv(z) with respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Bessel function
		z : complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.6.E7
	**/
	static public function jvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
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
		Compute nt zeros of the Kelvin function kei(x).
		    
	**/
	static public function kei_zeros(nt:Dynamic):Dynamic;
	/**
		keip(x[, out])
		
		keip(x)
		
		Derivative of the Kelvin function kei
	**/
	static public function keip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function kei'(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function keip_zeros(nt:Dynamic):Dynamic;
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
		Compute nt zeros of all Kelvin functions.
		
		Returned in a length-8 tuple of arrays of length nt.  The tuple contains
		the arrays of zeros of (ber, bei, ker, kei, ber', bei', ker', kei').
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function kelvin_zeros(nt:Dynamic):Dynamic;
	/**
		ker(x[, out])
		
		ker(x)
		
		Kelvin function ker
	**/
	static public function ker(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ker(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function ker_zeros(nt:Dynamic):Dynamic;
	/**
		kerp(x[, out])
		
		kerp(x)
		
		Derivative of the Kelvin function ker
	**/
	static public function kerp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ker'(x).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function kerp_zeros(nt:Dynamic):Dynamic;
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
		array([-1849.0354+0.j    ,   -25.7735+0.j    ,    -0.0307+0.0875j])
		
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.29.E5
	**/
	static public function kvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-Laguerre quadrature.
		The sample points are the roots of the n-th degree Laguerre polynomial,
		:math:`L_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, \infty]` with weight function :math:`f(x) = e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
	**/
	static public function l_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-generalized Laguerre
		quadrature. The sample points are the roots of the n-th degree generalized
		Laguerre polynomial, :math:`L^{\alpha}_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, \infty]` with weight function
		:math:`f(x) = x^{\alpha} e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function la_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return the nth order Laguerre polynoimal, L_n(x), orthogonal over
		[0,inf) with weighting function exp(-x)
	**/
	static public function laguerre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		lambertw(z, k=0, tol=1e-8)
		
		Lambert W function [1]_.
		
		The Lambert W function `W(z)` is defined as the inverse function
		of ``w * exp(w)``. In other words, the value of ``W(z)`` is
		such that ``z = W(z) * exp(W(z))`` for any complex number
		``z``.
		
		The Lambert W function is a multivalued function with infinitely
		many branches. Each branch gives a separate solution of the
		equation ``z = w exp(w)``. Here, the branches are indexed by the
		integer `k`.
		
		Parameters
		----------
		z : array_like
		    Input argument.
		k : int, optional
		    Branch index.
		tol : float, optional
		    Evaluation tolerance.
		
		Returns
		-------
		w : array
		    `w` will have the same shape as `z`.
		
		Notes
		-----
		All branches are supported by `lambertw`:
		
		* ``lambertw(z)`` gives the principal solution (branch 0)
		* ``lambertw(z, k)`` gives the solution on branch `k`
		
		The Lambert W function has two partially real branches: the
		principal branch (`k = 0`) is real for real ``z > -1/e``, and the
		``k = -1`` branch is real for ``-1/e < z < 0``. All branches except
		``k = 0`` have a logarithmic singularity at ``z = 0``.
		
		**Possible issues**
		
		The evaluation can become inaccurate very close to the branch point
		at ``-1/e``. In some corner cases, `lambertw` might currently
		fail to converge, or can end up on the wrong branch.
		
		**Algorithm**
		
		Halley's iteration is used to invert ``w * exp(w)``, using a first-order
		asymptotic approximation (O(log(w)) or `O(w)`) as the initial estimate.
		
		The definition, implementation and choice of branches is based on [2]_.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Lambert_W_function
		.. [2] Corless et al, "On the Lambert W function", Adv. Comp. Math. 5
		   (1996) 329-359.
		   http://www.apmaths.uwo.ca/~djeffrey/Offprints/W-adv-cm.pdf
		
		Examples
		--------
		The Lambert W function is the inverse of ``w exp(w)``:
		
		>>> from scipy.special import lambertw
		>>> w = lambertw(1)
		>>> w
		(0.56714329040978384+0j)
		>>> w * np.exp(w)
		(1.0+0j)
		
		Any branch gives a valid inverse:
		
		>>> w = lambertw(1, k=3)
		>>> w
		(-2.8535817554090377+17.113535539412148j)
		>>> w*np.exp(w)
		(1.0000000000000002+1.609823385706477e-15j)
		
		**Applications to equation-solving**
		
		The Lambert W function may be used to solve various kinds of
		equations, such as finding the value of the infinite power
		tower :math:`z^{z^{z^{\ldots}}}`:
		
		>>> def tower(z, n):
		...     if n == 0:
		...         return z
		...     return z ** tower(z, n-1)
		...
		>>> tower(0.5, 100)
		0.641185744504986
		>>> -lambertw(-np.log(0.5)) / np.log(0.5)
		(0.64118574450498589+0j)
	**/
	static public function lambertw(z:Dynamic, ?k:Dynamic, ?tol:Dynamic):Array<Dynamic>;
	/**
		Legendre polynomial coefficients
		
		Returns the nth-order Legendre polynomial, P_n(x), orthogonal over
		[-1, 1] with weight function 1.
		
		Parameters
		----------
		n
		    Order of the polynomial
		monic : bool, optional
		    If True, output is a monic polynomial (normalized so the leading
		    coefficient is 1).  Default is False.
		
		Returns
		-------
		P : orthopoly1d
		    The Legendre polynomial object
		
		Examples
		--------
		Generate the 3rd-order Legendre polynomial 1/2*(5x^3 + 0x^2 - 3x + 0):
		
		>>> from scipy.special import legendre
		>>> legendre(3)
		poly1d([ 2.5,  0. , -1.5,  0. ])
	**/
	static public function legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] Jahnke, E. and Emde, F. "Tables of Functions with Formulae and
		       Curves" (4th ed.), Dover, 1945
	**/
	static public function lmbda(v:Dynamic, x:Dynamic):Dynamic;
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
		Associated Legendre function of the first kind, Pmn(z).
		
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/14.3
	**/
	static public function lpmn(m:Dynamic, n:Dynamic, z:Dynamic):Dynamic;
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
		Legendre functions of the first kind, Pn(z).
		
		Compute sequence of Legendre functions of the first kind (polynomials),
		Pn(z) and derivatives for all degrees from 0 to n (inclusive).
		
		See also special.legendre for polynomial class.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function lpn(n:Dynamic, z:Dynamic):Dynamic;
	/**
		Associated Legendre function of the second kind, Qmn(z).
		
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function lqmn(m:Dynamic, n:Dynamic, z:Dynamic):Dynamic;
	/**
		Legendre functions of the second kind, Qn(z).
		
		Compute sequence of Legendre functions of the second kind, Qn(z) and
		derivatives for all degrees from 0 to n (inclusive).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function lqn(n:Dynamic, z:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/28.4#i
	**/
	static public function mathieu_even_coef(m:Dynamic, q:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function mathieu_odd_coef(m:Dynamic, q:Dynamic):Dynamic;
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
		Returns the log of multivariate gamma, also sometimes called the
		generalized gamma.
		
		Parameters
		----------
		a : ndarray
		    The multivariate gamma is computed for each item of `a`.
		d : int
		    The dimension of the space of integration.
		
		Returns
		-------
		res : ndarray
		    The values of the log multivariate gamma at the given points `a`.
		
		Notes
		-----
		The formal definition of the multivariate gamma of dimension d for a real
		`a` is
		
		.. math::
		
		    \Gamma_d(a) = \int_{A>0} e^{-tr(A)} |A|^{a - (d+1)/2} dA
		
		with the condition :math:`a > (d-1)/2`, and :math:`A > 0` being the set of
		all the positive definite matrices of dimension `d`.  Note that `a` is a
		scalar: the integrand only is multivariate, the argument is not (the
		function is defined over a subset of the real set).
		
		This can be proven to be equal to the much friendlier equation
		
		.. math::
		
		    \Gamma_d(a) = \pi^{d(d-1)/4} \prod_{i=1}^{d} \Gamma(a - (i-1)/2).
		
		References
		----------
		R. J. Muirhead, Aspects of multivariate statistical theory (Wiley Series in
		probability and mathematical statistics).
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
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
		Characteristic values for oblate spheroidal wave functions.
		
		Compute a sequence of characteristic values for the oblate
		spheroidal wave functions for mode m and n'=m..n and spheroidal
		parameter c.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function obl_cv_seq(m:Dynamic, n:Dynamic, c:Dynamic):Dynamic;
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
		Gauss-Legendre quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function p_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function pbdn_seq(n:Dynamic, z:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function pbdv_seq(v:Dynamic, x:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function pbvv_seq(v:Dynamic, x:Dynamic):Dynamic;
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
		Polygamma function n.
		
		This is the nth derivative of the digamma (psi) function.
		
		Parameters
		----------
		n : array_like of int
		    The order of the derivative of `psi`.
		x : array_like
		    Where to evaluate the polygamma function.
		
		Returns
		-------
		polygamma : ndarray
		    The result.
		
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
	static public var print_function : Dynamic;
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
		Characteristic values for prolate spheroidal wave functions.
		
		Compute a sequence of characteristic values for the prolate
		spheroidal wave functions for mode m and n'=m..n and spheroidal
		parameter c.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function pro_cv_seq(m:Dynamic, n:Dynamic, c:Dynamic):Dynamic;
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
		Gauss-Legendre (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree shifted Legendre
		polynomial :math:`P^*_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function ps_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.51.E1
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
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.51.E1
	**/
	static public function riccati_yn(n:Dynamic, x:Dynamic):Dynamic;
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
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`S_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = \sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function s_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return nth order shifted Chebyshev polynomial of first kind, Tn(x).
		Orthogonal over [0,1] with weight function (x-x**2)**(-1/2).
	**/
	static public function sh_chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order shifted Chebyshev polynomial of second kind, Un(x).
		Orthogonal over [0,1] with weight function (x-x**2)**(1/2).
	**/
	static public function sh_chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order Jacobi polynomial, G_n(p,q,x)
		orthogonal over [0,1] with weighting function
		(1-x)**(p-q) (x)**(q-1) with p>q-1 and q > 0.
	**/
	static public function sh_jacobi(n:Dynamic, p:Dynamic, q:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order shifted Legendre polynomial, P^*_n(x), orthogonal
		over [0,1] with weighting function 1.
	**/
	static public function sh_legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
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
		Return the sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
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
		       http://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		array([ -3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02,
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
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("X")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		It works in 2-D as well:
		
		>>> x = np.linspace(-4, 4, 401)
		>>> xx = np.outer(x, x)
		>>> plt.imshow(np.sinc(xx))
		<matplotlib.image.AxesImage object at 0x...>
	**/
	static public function sinc(x:Dynamic):Dynamic;
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
		`sph_in` is deprecated!
		scipy.special.sph_in is deprecated in scipy 0.18.0. Use scipy.special.spherical_in instead. Note that the new function has a different signature.
		
		Compute spherical Bessel function in(z) and derivative.
		
		    This function computes the value and first derivative of in(z) for all
		    orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of in to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    in : ndarray
		        Value of i0(z), ..., in(z)
		    inp : ndarray
		        First derivative i0'(z), ..., in'(z)
		
		    See also
		    --------
		    spherical_in
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_in(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`sph_inkn` is deprecated!
		scipy.special.sph_inkn is deprecated in scipy 0.18.0. Use scipy.special.spherical_in and scipy.special.spherical_kn instead. Note that the new function has a different signature.
		
		Compute spherical Bessel functions in(z), kn(z), and derivatives.
		
		    This function computes the value and first derivative of in(z) and kn(z)
		    for all orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of in and kn to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    in : ndarray
		        Value of i0(z), ..., in(z)
		    inp : ndarray
		        First derivative i0'(z), ..., in'(z)
		    kn : ndarray
		        Value of k0(z), ..., kn(z)
		    knp : ndarray
		        First derivative k0'(z), ..., kn'(z)
		
		    See also
		    --------
		    spherical_in
		    spherical_kn
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_inkn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`sph_jn` is deprecated!
		scipy.special.sph_jn is deprecated in scipy 0.18.0. Use scipy.special.spherical_jn instead. Note that the new function has a different signature.
		
		Compute spherical Bessel function jn(z) and derivative.
		
		    This function computes the value and first derivative of jn(z) for all
		    orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of jn to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    jn : ndarray
		        Value of j0(z), ..., jn(z)
		    jnp : ndarray
		        First derivative j0'(z), ..., jn'(z)
		
		    See also
		    --------
		    spherical_jn
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_jn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`sph_jnyn` is deprecated!
		scipy.special.sph_jnyn is deprecated in scipy 0.18.0. Use scipy.special.spherical_jn and scipy.special.spherical_yn instead. Note that the new function has a different signature.
		
		Compute spherical Bessel functions jn(z) and yn(z) and derivatives.
		
		    This function computes the value and first derivative of jn(z) and yn(z)
		    for all orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of jn and yn to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    jn : ndarray
		        Value of j0(z), ..., jn(z)
		    jnp : ndarray
		        First derivative j0'(z), ..., jn'(z)
		    yn : ndarray
		        Value of y0(z), ..., yn(z)
		    ynp : ndarray
		        First derivative y0'(z), ..., yn'(z)
		
		    See also
		    --------
		    spherical_jn
		    spherical_yn
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_jnyn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`sph_kn` is deprecated!
		scipy.special.sph_kn is deprecated in scipy 0.18.0. Use scipy.special.spherical_kn instead. Note that the new function has a different signature.
		
		Compute spherical Bessel function kn(z) and derivative.
		
		    This function computes the value and first derivative of kn(z) for all
		    orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of kn to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    kn : ndarray
		        Value of k0(z), ..., kn(z)
		    knp : ndarray
		        First derivative k0'(z), ..., kn'(z)
		
		    See also
		    --------
		    spherical_kn
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_kn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`sph_yn` is deprecated!
		scipy.special.sph_yn is deprecated in scipy 0.18.0. Use scipy.special.spherical_yn instead. Note that the new function has a different signature.
		
		Compute spherical Bessel function yn(z) and derivative.
		
		    This function computes the value and first derivative of yn(z) for all
		    orders up to and including n.
		
		    Parameters
		    ----------
		    n : int
		        Maximum order of yn to compute
		    z : complex
		        Argument at which to evaluate
		
		    Returns
		    -------
		    yn : ndarray
		        Value of y0(z), ..., yn(z)
		    ynp : ndarray
		        First derivative y0'(z), ..., yn'(z)
		
		    See also
		    --------
		    spherical_yn
		
		    References
		    ----------
		    .. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		           Functions", John Wiley and Sons, 1996, chapter 8.
		           http://jin.ece.illinois.edu/specfunc.html
		
		    
	**/
	static public function sph_yn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modified spherical Bessel function of the first kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: i_n(z) = \sqrt{\frac{\pi}{2z}} I_{n + 1/2}(z),
		
		where :math:`I_n` is the modified Bessel function of the first kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		in : ndarray
		
		Notes
		-----
		The function is computed using its definitional relation to the
		modified cylindrical Bessel function of the first kind.
		
		The derivative is computed using the relations [2]_,
		
		.. math::
		    i_n' = i_{n-1} - \frac{n + 1}{2} i_n.
		
		    i_1' = i_0
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E7
		.. [2] http://dlmf.nist.gov/10.51.E5
	**/
	static public function spherical_in(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Spherical Bessel function of the first kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: j_n(z) = \sqrt{\frac{\pi}{2z}} J_{n + 1/2}(z),
		
		where :math:`J_n` is the Bessel function of the first kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		jn : ndarray
		
		Notes
		-----
		For real arguments greater than the order, the function is computed
		using the ascending recurrence [2]_.  For small real or complex
		arguments, the definitional relation to the cylindrical Bessel function
		of the first kind is used.
		
		The derivative is computed using the relations [3]_,
		
		.. math::
		    j_n' = j_{n-1} - \frac{n + 1}{2} j_n.
		
		    j_0' = -j_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E3
		.. [2] http://dlmf.nist.gov/10.51.E1
		.. [3] http://dlmf.nist.gov/10.51.E2
	**/
	static public function spherical_jn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Modified spherical Bessel function of the second kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: k_n(z) = \sqrt{\frac{\pi}{2z}} K_{n + 1/2}(z),
		
		where :math:`K_n` is the modified Bessel function of the second kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		kn : ndarray
		
		Notes
		-----
		The function is computed using its definitional relation to the
		modified cylindrical Bessel function of the second kind.
		
		The derivative is computed using the relations [2]_,
		
		.. math::
		    k_n' = -k_{n-1} - \frac{n + 1}{2} k_n.
		
		    k_0' = -k_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E9
		.. [2] http://dlmf.nist.gov/10.51.E5
	**/
	static public function spherical_kn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Spherical Bessel function of the second kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: y_n(z) = \sqrt{\frac{\pi}{2z}} Y_{n + 1/2}(z),
		
		where :math:`Y_n` is the Bessel function of the second kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		yn : ndarray
		
		Notes
		-----
		For real arguments, the function is computed using the ascending
		recurrence [2]_.  For complex arguments, the definitional relation to
		the cylindrical Bessel function of the second kind is used.
		
		The derivative is computed using the relations [3]_,
		
		.. math::
		    y_n' = y_{n-1} - \frac{n + 1}{2} y_n.
		
		    y_0' = -y_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E4
		.. [2] http://dlmf.nist.gov/10.51.E1
		.. [3] http://dlmf.nist.gov/10.51.E2
	**/
	static public function spherical_yn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
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
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`T_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1/\sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
	**/
	static public function t_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		tandg(x[, out])
		
		tandg(x)
		
		Tangent of angle x given in degrees.
	**/
	static public function tandg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		tklmbda(x1, x2[, out])
		
		tklmbda(x, lmbda)
		
		Tukey-Lambda cumulative distribution function
	**/
	static public function tklmbda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the first kind, :math:`T_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = 1/\sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function ts_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`U_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = \sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function u_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the second kind, :math:`U_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = \sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function us_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function y0_zeros(nt:Dynamic, ?complex:Dynamic):Dynamic;
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
		       http://jin.ece.illinois.edu/specfunc.html
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
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function y1p_zeros(nt:Dynamic, ?complex:Dynamic):Dynamic;
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
		Compute zeros of integer-order Bessel function Yn(x).
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function yn_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel function derivative Yn'(x).
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
	**/
	static public function ynp_zeros(n:Dynamic, nt:Dynamic):Dynamic;
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
		Compute nth derivative of Bessel function Yv(z) with respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Bessel function
		z : complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       http://jin.ece.illinois.edu/specfunc.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       http://dlmf.nist.gov/10.6.E7
	**/
	static public function yvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Riemann zeta function.
		
		The two-argument version is the Hurwitz zeta function:
		
		.. math:: \zeta(x, q) = \sum_{k=0}^{\infty} \frac{1}{(k + q)^x},
		
		Riemann zeta function corresponds to ``q = 1``.
		
		See also
		--------
		zetac
	**/
	static public function zeta(x:Dynamic, ?q:Dynamic, ?out:Dynamic):Dynamic;
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