/* This file is generated, do not edit! */
package pandas.core.array_algos.masked_reductions;
@:pythonImport("pandas.core.array_algos.masked_reductions") extern class Masked_reductions_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Reduction for 1D masked array.
		
		Parameters
		----------
		func : np.min or np.max
		values : np.ndarray
		    Numpy array with the values (can be of any dtype that support the
		    operation).
		mask : np.ndarray
		    Boolean numpy array (True values indicate missing values).
		skipna : bool, default True
		    Whether to skip NA.
		axis : int, optional, default None
	**/
	static public function _minmax(func:Dynamic, values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Sum or product for 1D masked array.
		
		Parameters
		----------
		func : np.sum or np.prod
		values : np.ndarray
		    Numpy array with the values (can be of any dtype that support the
		    operation).
		mask : np.ndarray
		    Boolean numpy array (True values indicate missing values).
		skipna : bool, default True
		    Whether to skip NA.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer than
		    ``min_count`` non-NA values are present the result will be NA.
		axis : int, optional, default None
	**/
	static public function _sumprod(func:Dynamic, values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?min_count:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Check for the `min_count` keyword. Returns True if below `min_count` (when
		missing value should be returned from the reduction).
		
		Parameters
		----------
		shape : tuple
		    The shape of the values (`values.shape`).
		mask : ndarray[bool] or None
		    Boolean numpy array (typically of same shape as `shape`) or None.
		min_count : int
		    Keyword passed through from sum/prod call.
		
		Returns
		-------
		bool
	**/
	static public function check_below_min_count(shape:Dynamic, mask:Dynamic, min_count:Dynamic):Dynamic;
	static public function max(values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?axis:Dynamic):Dynamic;
	static public function mean(values:Dynamic, mask:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function min(values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?axis:Dynamic):Dynamic;
	static public function prod(values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?min_count:Dynamic, ?axis:Dynamic):Dynamic;
	static public function sum(values:Dynamic, mask:Dynamic, ?skipna:Dynamic, ?min_count:Dynamic, ?axis:Dynamic):Dynamic;
}