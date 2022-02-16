/* This file is generated, do not edit! */
package pandas._libs.window.aggregations;
@:pythonImport("pandas._libs.window.aggregations") extern class Aggregations_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Compute exponentially-weighted moving average or sum using center-of-mass.
		
		Parameters
		----------
		vals : ndarray (float64 type)
		start: ndarray (int64 type)
		end: ndarray (int64 type)
		minp : int
		com : float64
		adjust : bool
		ignore_na : bool
		deltas : ndarray (float64 type), optional. If None, implicitly assumes equally
		         spaced points (used when `times` is not passed)
		normalize : bool, optional.
		            If True, calculate the mean. If False, calculate the sum.
		
		Returns
		-------
		np.ndarray[float64_t]
	**/
	static public function ewm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute exponentially-weighted moving variance using center-of-mass.
		
		Parameters
		----------
		input_x : ndarray (float64 type)
		start: ndarray (int64 type)
		end: ndarray (int64 type)
		minp : int
		input_y : ndarray (float64 type)
		com : float64
		adjust : bool
		ignore_na : bool
		bias : bool
		
		Returns
		-------
		np.ndarray[float64_t]
	**/
	static public function ewmcov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var interpolation_types : Dynamic;
	/**
		Returns
		-------
		tuple
		    is_monotonic_inc : bool
		    is_monotonic_dec : bool
		    is_unique : bool
	**/
	static public function is_monotonic(arr:Dynamic, timelike:Dynamic):Dynamic;
	static public function roll_apply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_kurt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of any numeric type along axis=0 ignoring NaNs.
		
		Parameters
		----------
		values : np.ndarray[np.float64]
		window : int, size of rolling window
		minp : if number of observations in window
		      is below this, output a NaN
		index : ndarray, optional
		   index for window computation
		closed : 'right', 'left', 'both', 'neither'
		        make the interval closed on the right, left,
		        both or neither endpoints
		
		Returns
		-------
		np.ndarray[float]
	**/
	static public function roll_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_median_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving min of 1d array of any numeric type along axis=0 ignoring NaNs.
		
		Parameters
		----------
		values : np.ndarray[np.float64]
		window : int, size of rolling window
		minp : if number of observations in window
		      is below this, output a NaN
		index : ndarray, optional
		   index for window computation
		
		Returns
		-------
		np.ndarray[float]
	**/
	static public function roll_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		O(N log(window)) implementation using skip list
	**/
	static public function roll_quantile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		O(N log(window)) implementation using skip list
		
		derived from roll_quantile
	**/
	static public function roll_rank(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_skew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Numerically stable implementation using Welford's method.
	**/
	static public function roll_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_weighted_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_weighted_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculates weighted rolling variance using West's online algorithm.
		
		Paper: https://dl.acm.org/citation.cfm?id=359153
		
		Parameters
		----------
		values: float64_t[:]
		    values to roll window over
		weights: float64_t[:]
		    array of weights whose length is window size
		minp: int64_t
		    minimum number of observations to calculate
		    variance of a window
		ddof: unsigned int
		     the divisor used in variance calculations
		     is the window size - ddof
		
		Returns
		-------
		output: float64_t[:]
		    weighted variances of windows
	**/
	static public function roll_weighted_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var rolling_rank_tiebreakers : Dynamic;
}