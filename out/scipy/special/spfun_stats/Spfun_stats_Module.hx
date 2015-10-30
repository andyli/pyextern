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
		gammaln(x[, out])
		
		gammaln(z)
		
		Logarithm of absolute value of gamma function
		
		Defined as::
		
		    ln(abs(gamma(z)))
		
		See Also
		--------
		gammasgn
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
		The formal definition of the multivariate gamma of dimension d for a real a
		is::
		
		    \Gamma_d(a) = \int_{A>0}{e^{-tr(A)\cdot{|A|}^{a - (m+1)/2}dA}}
		
		with the condition ``a > (d-1)/2``, and ``A > 0`` being the set of all the
		positive definite matrices of dimension s.  Note that a is a scalar: the
		integrand only is multivariate, the argument is not (the function is
		defined over a subset of the real set).
		
		This can be proven to be equal to the much friendlier equation::
		
		    \Gamma_d(a) = \pi^{d(d-1)/4}\prod_{i=1}^{d}{\Gamma(a - (i-1)/2)}.
		
		References
		----------
		R. J. Muirhead, Aspects of multivariate statistical theory (Wiley Series in
		probability and mathematical statistics).
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}