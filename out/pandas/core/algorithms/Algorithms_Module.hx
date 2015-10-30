/* This file is generated, do not edit! */
package pandas.core.algorithms;
@:pythonImport("pandas.core.algorithms") extern class Algorithms_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _dtype_map : Dynamic;
	static public function _finalize_nsmallest(arr:Dynamic, kth_val:Dynamic, n:Dynamic, keep:Dynamic, narr:Dynamic):Dynamic;
	static public function _get_data_algo(values:Dynamic, func_map:Dynamic):Dynamic;
	/**
		f(HashTable, type_caster) -> result
	**/
	static public function _hashtable_algo(f:Dynamic, dtype:Dynamic, ?return_dtype:Dynamic):Dynamic;
	static public var _hashtables : Dynamic;
	/**
		Returns the point at the given fraction between a and b, where
		'fraction' must be between 0 and 1.
	**/
	static public function _interpolate(a:Dynamic, b:Dynamic, fraction:Dynamic):Dynamic;
	static public function _match_generic(values:Dynamic, index:Dynamic, table_type:Dynamic, type_caster:Dynamic):Dynamic;
	static public var _np_version_under1p8 : Dynamic;
	static public var _rank1d_functions : Dynamic;
	static public var _rank2d_functions : Dynamic;
	static public var _select_methods : Dynamic;
	static public function _unique_generic(values:Dynamic, table_type:Dynamic, type_caster:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Encode input values as an enumerated type or categorical variable
		
		Parameters
		----------
		values : ndarray (1-d)
		    Sequence
		sort : boolean, default False
		    Sort by values
		order : deprecated
		na_sentinel : int, default -1
		    Value to mark "not found"
		size_hint : hint to the hashtable sizer
		
		Returns
		-------
		labels : the indexer to the original array
		uniques : ndarray (1-d) or Index
		    the unique values. Index is returned when passed values is Index or Series
		
		note: an array of Periods will ignore sort as it returns an always sorted PeriodIndex
	**/
	static public function factorize(values:Dynamic, ?sort:Dynamic, ?order:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic):Dynamic;
	/**
		Get group position
	**/
	static public function group_position(args:Dynamic):Dynamic;
	/**
		Compute the isin boolean array
		
		Parameters
		----------
		comps: array-like
		values: array-like
		
		Returns
		-------
		boolean array same length as comps
	**/
	static public function isin(comps:Dynamic, values:Dynamic):Dynamic;
	/**
		Compute locations of to_match into values
		
		Parameters
		----------
		to_match : array-like
		    values to find positions of
		values : array-like
		    Unique set of values
		na_sentinel : int, default -1
		    Value to mark "not found"
		
		Examples
		--------
		
		Returns
		-------
		match : ndarray of integers
	**/
	static public function match(to_match:Dynamic, values:Dynamic, ?na_sentinel:Dynamic):Dynamic;
	/**
		Returns the mode or mode(s) of the passed Series or ndarray (sorted)
	**/
	static public function mode(values:Dynamic):Dynamic;
	/**
		Find the indices of the n largest values of a numpy array.
		
		Note: Fails silently with NaN.
	**/
	static public function nlargest(arr:Dynamic, n:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Find the indices of the n smallest values of a numpy array.
		
		Note: Fails silently with NaN.
	**/
	static public function nsmallest(arr:Dynamic, n:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Compute sample quantile or quantiles of the input array. For example, q=0.5
		computes the median.
		
		The `interpolation_method` parameter supports three values, namely
		`fraction` (default), `lower` and `higher`. Interpolation is done only,
		if the desired quantile lies between two data points `i` and `j`. For
		`fraction`, the result is an interpolated value between `i` and `j`;
		for `lower`, the result is `i`, for `higher` the result is `j`.
		
		Parameters
		----------
		x : ndarray
		    Values from which to extract score.
		q : scalar or array
		    Percentile at which to extract score.
		interpolation_method : {'fraction', 'lower', 'higher'}, optional
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		    - fraction: `i + (j - i)*fraction`, where `fraction` is the
		                fractional part of the index surrounded by `i` and `j`.
		    -lower: `i`.
		    - higher: `j`.
		
		Returns
		-------
		score : float
		    Score at percentile.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(100)
		>>> stats.scoreatpercentile(a, 50)
		49.5
	**/
	static public function quantile(x:Dynamic, q:Dynamic, ?interpolation_method:Dynamic):Dynamic;
	/**
		    
	**/
	static public function rank(values:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Implement n largest/smallest.
		
		Parameters
		----------
		n : int
		keep : {'first', 'last'}, default 'first'
		method : str, {'nlargest', 'nsmallest'}
		
		Returns
		-------
		nordered : Series
	**/
	static public function select_n(series:Dynamic, n:Dynamic, keep:Dynamic, method:Dynamic):Dynamic;
	static public function select_n_slow(dropped:Dynamic, n:Dynamic, keep:Dynamic, method:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Compute unique values (not necessarily sorted) efficiently from input array
		of values
		
		Parameters
		----------
		values : array-like
		
		Returns
		-------
		uniques
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Compute a histogram of the counts of non-null values.
		
		Parameters
		----------
		values : ndarray (1-d)
		sort : boolean, default True
		    Sort by values
		ascending : boolean, default False
		    Sort in ascending order
		normalize: boolean, default False
		    If True then compute a relative histogram
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    convenience for pd.cut, only works with numeric data
		dropna : boolean, default True
		    Don't include counts of NaN
		
		Returns
		-------
		value_counts : Series
	**/
	static public function value_counts(values:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?normalize:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}