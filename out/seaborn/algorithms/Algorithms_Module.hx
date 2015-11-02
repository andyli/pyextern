/* This file is generated, do not edit! */
package seaborn.algorithms;
@:pythonImport("seaborn.algorithms") extern class Algorithms_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Bootstrap by resampling from a kernel density estimate.
	**/
	static public function _smooth_bootstrap(args:Dynamic, n_boot:Dynamic, func:Dynamic, func_kwargs:Dynamic):Dynamic;
	/**
		Resample units instead of datapoints.
	**/
	static public function _structured_bootstrap(args:Dynamic, n_boot:Dynamic, units:Dynamic, func:Dynamic, func_kwargs:Dynamic, rs:Dynamic):Dynamic;
	/**
		Resample one or more arrays with replacement and store aggregate values.
		
		Positional arguments are a sequence of arrays to bootstrap along the first
		axis and pass to a summary function.
		
		Keyword arguments:
		    n_boot : int, default 10000
		        Number of iterations
		    axis : int, default None
		        Will pass axis to ``func`` as a keyword argument.
		    units : array, default None
		        Array of sampling unit IDs. When used the bootstrap resamples units
		        and then observations within units instead of individual
		        datapoints.
		    smooth : bool, default False
		        If True, performs a smoothed bootstrap (draws samples from a kernel
		        destiny estimate); only works for one-dimensional inputs and cannot
		        be used `units` is present.
		    func : callable, default np.mean
		        Function to call on the args that are passed in.
		    random_seed : int | None, default None
		        Seed for the random number generator; useful if you want
		        reproducible resamples.
		
		Returns
		-------
		boot_dist: array
		    array of bootstrapped statistic values
	**/
	static public function bootstrap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Test the significance of set of correlations with permutations.
		
		By default this corrects for multiple comparisons across one side
		of the matrix.
		
		Parameters
		----------
		a : n_vars x n_obs array
		    array with variables as rows
		tail : both | upper | lower
		    whether test should be two-tailed, or which tail to integrate over
		corrected : boolean
		    if True reports p values with respect to the max stat distribution
		n_iter : int
		    number of permutation iterations
		random_seed : int or None
		    seed for RNG
		return_dist : bool
		    if True, return n_vars x n_vars x n_iter
		
		Returns
		-------
		p_mat : float
		    array of probabilites for actual correlation from null CDF
	**/
	static public function randomize_corrmat(a:Dynamic, ?tail:Dynamic, ?corrected:Dynamic, ?n_iter:Dynamic, ?random_seed:Dynamic, ?return_dist:Dynamic):Dynamic;
}