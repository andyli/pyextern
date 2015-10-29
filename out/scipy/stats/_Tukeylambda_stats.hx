/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats._tukeylambda_stats") extern class _Tukeylambda_stats {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _tukeylambda_kurt_p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _tukeylambda_kurt_pc : Dynamic;
	static public function _tukeylambda_kurt_q(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _tukeylambda_kurt_qc : Dynamic;
	static public function _tukeylambda_var_p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _tukeylambda_var_pc : Dynamic;
	static public function _tukeylambda_var_q(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _tukeylambda_var_qc : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		beta(x1, x2[, out])
		
		beta(a, b)
		
		Beta function.
		
		::
		
		    beta(a,b) =  gamma(a) * gamma(b) / gamma(a+b)
	**/
	static public function beta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Kurtosis of the Tukey Lambda distribution.
		
		Parameters
		----------
		lam : array_like
		    The lambda values at which to compute the variance.
		
		Returns
		-------
		v : ndarray
		    The variance.  For lam < -0.25, the variance is not defined, so
		    np.nan is returned.  For lam = 0.25, np.inf is returned.
	**/
	static public function tukeylambda_kurtosis(lam:Dynamic):Dynamic;
	/**
		Variance of the Tukey Lambda distribution.
		
		Parameters
		----------
		lam : array_like
		    The lambda values at which to compute the variance.
		
		Returns
		-------
		v : ndarray
		    The variance.  For lam < -0.5, the variance is not defined, so
		    np.nan is returned.  For lam = 0.5, np.inf is returned.
		
		Notes
		-----
		In an interval around lambda=0, this function uses the [4,4] Pade
		approximation to compute the variance.  Otherwise it uses the standard
		formula (http://en.wikipedia.org/wiki/Tukey_lambda_distribution).  The
		Pade approximation is used because the standard formula has a removable
		discontinuity at lambda = 0, and does not produce accurate numerical
		results near lambda = 0.
	**/
	static public function tukeylambda_variance(lam:Dynamic):Dynamic;
}