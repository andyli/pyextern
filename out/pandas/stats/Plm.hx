/* This file is generated, do not edit! */
package pandas.stats;
@:pythonImport("pandas.stats.plm") extern class Plm {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convertDummies(dummies:Dynamic, mapping:Dynamic):Dynamic;
	/**
		R-style aggregator
		
		Parameters
		----------
		values : N-length or N x K ndarray
		bounds : B-length ndarray
		f : ndarray aggregation function
		
		Returns
		-------
		ndarray with same length as bounds array
	**/
	static public function _group_agg(values:Dynamic, bounds:Dynamic, f:Dynamic):Dynamic;
	static public function _is_numeric(df:Dynamic):Dynamic;
	static public function _var_beta_panel(y:Dynamic, x:Dynamic, beta:Dynamic, xx:Dynamic, rmse:Dynamic, cluster_axis:Dynamic, nw_lags:Dynamic, nobs:Dynamic, df:Dynamic, nw_overlap:Dynamic):Dynamic;
	/**
		Returns X'X - (X'T) (T'T)^-1 (T'X)
	**/
	static public function _xx_time_effects(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Add column of ones to input panel
		
		Parameters
		----------
		panel: Panel / DataFrame
		name: string, default 'intercept']
		
		Returns
		-------
		New object (same type as input)
	**/
	static public function add_intercept(panel:Dynamic, ?name:Dynamic):Dynamic;
	static public function create_ols_attr(attr:Dynamic):Dynamic;
	static public function create_ols_dict(attr:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Convert categorical variable into dummy/indicator variables
		
		Parameters
		----------
		data : array-like, Series, or DataFrame
		prefix : string, list of strings, or dict of strings, default None
		    String to append DataFrame column names
		    Pass a list with length equal to the number of columns
		    when calling get_dummies on a DataFrame. Alternativly, `prefix`
		    can be a dictionary mapping column names to prefixes.
		prefix_sep : string, default '_'
		    If appending prefix, separator/delimiter to use. Or pass a
		    list or dictionary as with `prefix.`
		dummy_na : bool, default False
		    Add a column to indicate NaNs, if False NaNs are ignored.
		columns : list-like, default None
		    Column names in the DataFrame to be encoded.
		    If `columns` is None then all the columns with
		    `object` or `category` dtype will be converted.
		sparse : bool, default False
		    Whether the dummy columns should be sparse or not.  Returns
		    SparseDataFrame if `data` is a Series or if all columns are included.
		    Otherwise returns a DataFrame with some SparseBlocks.
		
		    .. versionadded:: 0.16.1
		
		Returns
		-------
		dummies : DataFrame or SparseDataFrame
		
		Examples
		--------
		>>> import pandas as pd
		>>> s = pd.Series(list('abca'))
		
		>>> get_dummies(s)
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		
		>>> s1 = ['a', 'b', np.nan]
		
		>>> get_dummies(s1)
		   a  b
		0  1  0
		1  0  1
		2  0  0
		
		>>> get_dummies(s1, dummy_na=True)
		   a  b  NaN
		0  1  0    0
		1  0  1    0
		2  0  0    1
		
		>>> df = DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
		                    'C': [1, 2, 3]})
		
		>>> get_dummies(df, prefix=['col1', 'col2']):
		   C  col1_a  col1_b  col2_a  col2_b  col2_c
		0  1       1       0       0       1       0
		1  2       0       1       1       0       0
		2  3       1       0       0       0       1
		
		See also ``Series.str.get_dummies``.
	**/
	static public function get_dummies(data:Dynamic, ?prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?columns:Dynamic, ?sparse:Dynamic):Dynamic;
}