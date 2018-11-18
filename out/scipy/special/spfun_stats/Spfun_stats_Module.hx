/* This file is generated, do not edit! */
package scipy.special.spfun_stats;
@:pythonImport("scipy.special.spfun_stats") extern class Spfun_stats_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		gammaln(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Logarithm of the absolute value of the Gamma function.
		
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
		
		For complex-valued log-gamma, use `loggamma` instead of `gammaln`.
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
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}