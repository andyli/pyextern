/* This file is generated, do not edit! */
package pandas.core.array_algos.quantile;
@:pythonImport("pandas.core.array_algos.quantile") extern class Quantile_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrapper for np.percentile that skips missing values.
		
		Parameters
		----------
		values : np.ndarray[ndim=2]  over which to find quantiles
		qs : np.ndarray[float64] of quantile indices to find
		na_value : scalar
		    value to return for empty or all-null values
		mask : np.ndarray[bool]
		    locations in values that should be considered missing
		interpolation : str
		
		Returns
		-------
		quantiles : scalar or array
	**/
	static public function _nanpercentile(values:Dynamic, qs:Dynamic, na_value:Dynamic, mask:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Wrapper for np.percentile that skips missing values, specialized to
		1-dimensional case.
		
		Parameters
		----------
		values : array over which to find quantiles
		mask : ndarray[bool]
		    locations in values that should be considered missing
		qs : np.ndarray[float64] of quantile indices to find
		na_value : scalar
		    value to return for empty or all-null values
		interpolation : str
		
		Returns
		-------
		quantiles : scalar or array
	**/
	static public function _nanpercentile_1d(values:Dynamic, mask:Dynamic, qs:Dynamic, na_value:Dynamic, interpolation:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : bool, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		numpy.datetime64('NaT')
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	static public var np_percentile_argname : Dynamic;
	static public var npt : Dynamic;
	/**
		Compute the quantiles of the given values for each quantile in `qs`.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		qs : np.ndarray[float64]
		interpolation : str
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function quantile_compat(values:Dynamic, qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Compute the quantiles of the given values for each quantile in `qs`.
		
		Parameters
		----------
		values : np.ndarray
		    For ExtensionArray, this is _values_for_factorize()[0]
		mask : np.ndarray[bool]
		    mask = isna(values)
		    For ExtensionArray, this is computed before calling _value_for_factorize
		fill_value : Scalar
		    The value to interpret fill NA entries with
		    For ExtensionArray, this is _values_for_factorize()[1]
		qs : np.ndarray[float64]
		interpolation : str
		    Type of interpolation
		
		Returns
		-------
		np.ndarray
		
		Notes
		-----
		Assumes values is already 2D.  For ExtensionArray this means np.atleast_2d
		has been called on _values_for_factorize()[0]
		
		Quantile is computed along axis=1.
	**/
	static public function quantile_with_mask(values:Dynamic, mask:Dynamic, fill_value:Dynamic, qs:Dynamic, interpolation:Dynamic):Dynamic;
}