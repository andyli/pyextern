/* This file is generated, do not edit! */
package scipy.special.spfun_stats;
@:pythonImport("scipy.special.spfun_stats") extern class Spfun_stats_Module {
	/**
		gammaln(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		gammaln(x, out=None)
		
		Logarithm of the absolute value of the gamma function.
		
		Defined as
		
		.. math::
		
		   \ln(\lvert\Gamma(x)\rvert)
		
		where :math:`\Gamma` is the gamma function. For more details on
		the gamma function, see [dlmf]_.
		
		Parameters
		----------
		x : array_like
		    Real argument
		out : ndarray, optional
		    Optional output array for the function results
		
		Returns
		-------
		scalar or ndarray
		    Values of the log of the absolute value of gamma
		
		See Also
		--------
		gammasgn : sign of the gamma function
		loggamma : principal branch of the logarithm of the gamma function
		
		Notes
		-----
		It is the same function as the Python standard library function
		:func:`math.lgamma`.
		
		When used in conjunction with `gammasgn`, this function is useful
		for working in logspace on the real axis without having to deal
		with complex numbers via the relation ``exp(gammaln(x)) =
		gammasgn(x) * gamma(x)``.
		
		For complex-valued log-gamma, use `loggamma` instead of `gammaln`.
		
		References
		----------
		.. [dlmf] NIST Digital Library of Mathematical Functions
		          https://dlmf.nist.gov/5
		
		Examples
		--------
		>>> import scipy.special as sc
		
		It has two positive zeros.
		
		>>> sc.gammaln([1, 2])
		array([0., 0.])
		
		It has poles at nonpositive integers.
		
		>>> sc.gammaln([0, -1, -2, -3, -4])
		array([inf, inf, inf, inf, inf])
		
		It asymptotically approaches ``x * log(x)`` (Stirling's formula).
		
		>>> x = np.array([1e10, 1e20, 1e40, 1e80])
		>>> sc.gammaln(x)
		array([2.20258509e+11, 4.50517019e+21, 9.11034037e+41, 1.83206807e+82])
		>>> x * np.log(x)
		array([2.30258509e+11, 4.60517019e+21, 9.21034037e+41, 1.84206807e+82])
	**/
	static public function loggam(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		Examples
		--------
		>>> from scipy.special import multigammaln, gammaln
		>>> a = 23.5
		>>> d = 10
		>>> multigammaln(a, d)
		454.1488605074416
		
		Verify that the result agrees with the logarithm of the equation
		shown above:
		
		>>> d*(d-1)/4*np.log(np.pi) + gammaln(a - 0.5*np.arange(0, d)).sum()
		454.1488605074416
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
}