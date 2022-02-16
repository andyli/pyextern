/* This file is generated, do not edit! */
package pandas.core.sample;
@:pythonImport("pandas.core.sample") extern class Sample_Module {
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Process and validate the `weights` argument to `NDFrame.sample` and
		`.GroupBy.sample`.
		
		Returns `weights` as an ndarray[np.float64], validated except for normalizing
		weights (because that must be done groupwise in groupby sampling).
	**/
	static public function preprocess_weights(obj:Dynamic, weights:Dynamic, axis:Dynamic):Dynamic;
	/**
		Process and validate the `n` and `frac` arguments to `NDFrame.sample` and
		`.GroupBy.sample`.
		
		Returns None if `frac` should be used (variable sampling sizes), otherwise returns
		the constant sampling size.
	**/
	static public function process_sampling_size(n:Dynamic, frac:Dynamic, replace:Dynamic):Dynamic;
	/**
		Randomly sample `size` indices in `np.arange(obj_len)`
		
		Parameters
		----------
		obj_len : int
		    The length of the indices being considered
		size : int
		    The number of values to choose
		replace : bool
		    Allow or disallow sampling of the same row more than once.
		weights : np.ndarray[np.float64] or None
		    If None, equal probability weighting, otherwise weights according
		    to the vector normalized
		random_state: np.random.RandomState or np.random.Generator
		    State used for the random sampling
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function sample(obj_len:Dynamic, size:Dynamic, replace:Dynamic, weights:Dynamic, random_state:Dynamic):Dynamic;
}