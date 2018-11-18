/* This file is generated, do not edit! */
package pandas._libs.window;
@:pythonImport("pandas._libs.window") extern class Window_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_FixedWindowIndexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_MockFixedWindowIndexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_VariableWindowIndexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_WindowIndexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Parameters
		----------
		win: int
		minp: int or None
		N: len of window
		floor: int, optional
		    default 1
		
		Returns
		-------
		minimum period
	**/
	static public function _check_minp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute exponentially-weighted moving average using center-of-mass.
		
		Parameters
		----------
		input : ndarray (float64 type)
		com : float64
		adjust: int
		ignore_na: int
		minp: int
		
		Returns
		-------
		y : ndarray
	**/
	static public function ewma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute exponentially-weighted moving variance using center-of-mass.
		
		Parameters
		----------
		input_x : ndarray (float64 type)
		input_y : ndarray (float64 type)
		com : float64
		adjust: int
		ignore_na: int
		minp: int
		bias: int
		
		Returns
		-------
		y : ndarray
	**/
	static public function ewmcov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the correct window indexer for the computation
		
		Parameters
		----------
		input: 1d ndarray
		win: integer, window size
		minp: integer, minimum periods
		index: 1d ndarray, optional
		    index to the input array
		closed: string, default None
		    {'right', 'left', 'both', 'neither'}
		    window endpoint closedness. Defaults to 'right' in
		    VariableWindowIndexer and to 'both' in FixedWindowIndexer
		floor: optional
		    unit for flooring the unit
		use_mock: boolean, default True
		    if we are a fixed indexer, return a mock indexer
		    instead of the FixedWindow Indexer. This is a type
		    compat Indexer that allows us to use a standard
		    code path with all of the indexers.
		
		
		Returns
		-------
		tuple of 1d int64 ndarrays of the offsets & data about the window
	**/
	static public function get_window_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var interpolation_types : Dynamic;
	static public function roll_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_generic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_kurt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of any numeric type along axis=0 ignoring NaNs.
		
		Parameters
		----------
		input: numpy array
		window: int, size of rolling window
		minp: if number of observations in window
		      is below this, output a NaN
		index: ndarray, optional
		   index for window computation
		closed: 'right', 'left', 'both', 'neither'
		        make the interval closed on the right, left,
		        both or neither endpoints
	**/
	static public function roll_max(input:Dynamic, win:Dynamic, minp:Dynamic, index:Dynamic, closed:Dynamic):Dynamic;
	static public function roll_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_median_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of any numeric type along axis=0 ignoring NaNs.
		
		Parameters
		----------
		input: numpy array
		window: int, size of rolling window
		minp: if number of observations in window
		      is below this, output a NaN
		index: ndarray, optional
		   index for window computation
	**/
	static public function roll_min(input:Dynamic, win:Dynamic, minp:Dynamic, index:Dynamic, closed:Dynamic):Dynamic;
	/**
		O(N log(window)) implementation using skip list
	**/
	static public function roll_quantile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_skew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Numerically stable implementation using Welford's method.
	**/
	static public function roll_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Assume len(weights) << len(input)
	**/
	static public function roll_window(args:haxe.extern.Rest<Dynamic>):Dynamic;
}