/* This file is generated, do not edit! */
package pandas.stats;
@:pythonImport("pandas.stats.fama_macbeth") extern class Fama_macbeth {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _calc_t_stat(beta:Dynamic, nw_lags_beta:Dynamic):Dynamic;
	/**
		Runs Fama-MacBeth regression.
		
		Parameters
		----------
		Takes the same arguments as a panel OLS, in addition to:
		
		nw_lags_beta: int
		   Newey-West adjusts the betas by the given lags
	**/
	static public function fama_macbeth(kwargs:Dynamic):Dynamic;
}