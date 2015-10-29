/* This file is generated, do not edit! */
package pandas.stats;
@:pythonImport("pandas.stats.math") extern class Math {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the standard F-test statistic for linear restriction
		hypothesis testing
		
		Parameters
		----------
		R: ndarray (N x N)
		    Restriction matrix
		r: ndarray (N x 1)
		    Restriction vector
		beta: ndarray (N x 1)
		    Estimated model coefficients
		var_beta: ndarray (N x N)
		    Variance covariance matrix of regressors
		nobs: int
		    Number of observations in model
		df: int
		    Model degrees of freedom
		
		Returns
		-------
		F value, (q, df_resid), p value
	**/
	static public function calc_F(R:Dynamic, r:Dynamic, beta:Dynamic, var_beta:Dynamic, nobs:Dynamic, df:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the inverse of A.
	**/
	static public function inv(a:Dynamic):Dynamic;
	static public function is_psd(m:Dynamic):Dynamic;
	/**
		Compute Newey-West adjusted covariance matrix, taking into account
		specified number of leads / lags
		
		Parameters
		----------
		m : (N x K)
		max_lags : int
		nobs : int
		    Number of observations in model
		df : int
		    Degrees of freedom in explanatory variables
		nw_overlap : boolean, default False
		    Assume data is overlapping
		
		Returns
		-------
		ndarray (K x K)
		
		Reference
		---------
		Newey, W. K. & West, K. D. (1987) A Simple, Positive
		Semi-definite, Heteroskedasticity and Autocorrelation Consistent
		Covariance Matrix, Econometrica, vol. 55(3), 703-708
	**/
	static public function newey_west(m:Dynamic, max_lags:Dynamic, nobs:Dynamic, df:Dynamic, ?nw_overlap:Dynamic):Dynamic;
	/**
		Return the rank of a matrix X based on its generalized inverse,
		not the SVD.
	**/
	static public function rank(X:Dynamic, ?cond:Dynamic):Dynamic;
	/**
		Returns the solution of A X = B.
	**/
	static public function solve(a:Dynamic, b:Dynamic):Dynamic;
}