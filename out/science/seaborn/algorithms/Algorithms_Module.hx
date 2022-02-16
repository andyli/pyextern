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
		Given a seed in one of many formats, return a random number generator.
		
		Generalizes across the numpy 1.17 changes, preferring newer functionality.
	**/
	static public function _handle_random_seed(?seed:Dynamic):Dynamic;
	/**
		Resample units instead of datapoints.
	**/
	static public function _structured_bootstrap(args:Dynamic, n_boot:Dynamic, units:Dynamic, func:Dynamic, func_kwargs:Dynamic, integers:Dynamic):Dynamic;
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
		    func : string or callable, default np.mean
		        Function to call on the args that are passed in. If string, tries
		        to use as named method on numpy array.
		    seed : Generator | SeedSequence | RandomState | int | None
		        Seed for the random number generator; useful if you want
		        reproducible resamples.
		
		Returns
		-------
		boot_dist: array
		    array of bootstrapped statistic values
	**/
	static public function bootstrap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}