/* This file is generated, do not edit! */
package pandas.stats.misc;
@:pythonImport("pandas.stats.misc") extern class Misc_Module {
	static public var NaN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bucket_labels(series:Dynamic, k:Dynamic):Dynamic;
	static public function _bucketpanel_by(series:Dynamic, xby:Dynamic, yby:Dynamic, xbins:Dynamic, ybins:Dynamic):Dynamic;
	static public function _bucketpanel_cat(series:Dynamic, xcat:Dynamic, ycat:Dynamic):Dynamic;
	static public function _intern(values:Dynamic):Dynamic;
	static public function _split_quantile(arr:Dynamic, k:Dynamic):Dynamic;
	static public function _uniquify(xlabels:Dynamic, ylabels:Dynamic, xbins:Dynamic, ybins:Dynamic):Dynamic;
	/**
		Produce DataFrame representing quantiles of a Series
		
		Parameters
		----------
		series : Series
		k : int
		    number of quantiles
		by : Series or same-length array
		    bucket by value
		
		Returns
		-------
		DataFrame
	**/
	static public function bucket(series:Dynamic, k:Dynamic, ?by:Dynamic):Dynamic;
	/**
		Produce DataFrame representing quantiles of a Series
		
		Parameters
		----------
		series : Series
		cat : Series or same-length array
		    bucket by category; mutually exclusive with 'by'
		
		Returns
		-------
		DataFrame
	**/
	static public function bucketcat(series:Dynamic, cats:Dynamic):Dynamic;
	/**
		Bucket data by two Series to create summary panel
		
		Parameters
		----------
		series : Series
		bins : tuple (length-2)
		    e.g. (2, 2)
		by : tuple of Series
		    bucket by value
		cat : tuple of Series
		    bucket by category; mutually exclusive with 'by'
		
		Returns
		-------
		DataFrame
	**/
	static public function bucketpanel(series:Dynamic, ?bins:Dynamic, ?by:Dynamic, ?cat:Dynamic):Dynamic;
	/**
		Pairwise correlation of columns of two DataFrame objects
		
		Parameters
		----------
		
		Returns
		-------
		y : Series
	**/
	static public function correl_ts(frame1:Dynamic, frame2:Dynamic):Dynamic;
	static public function correl_xs(frame1:Dynamic, frame2:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Return score at percentile for each point in time (cross-section)
		
		Parameters
		----------
		frame: DataFrame
		column: string or Series, optional
		   Column name or specific Series to compute percentiles for.
		   If not provided, percentiles are computed for all values at each
		   point in time. Note that this can take a LONG time.
		kind: {'rank', 'weak', 'strict', 'mean'}, optional
		    This optional parameter specifies the interpretation of the
		    resulting score:
		
		    - "rank": Average percentage ranking of score.  In case of
		              multiple matches, average the percentage rankings of
		              all matching scores.
		    - "weak": This kind corresponds to the definition of a cumulative
		              distribution function.  A percentileofscore of 80%
		              means that 80% of values are less than or equal
		              to the provided score.
		    - "strict": Similar to "weak", except that only values that are
		                strictly less than the given score are counted.
		    - "mean": The average of the "weak" and "strict" scores, often used in
		              testing.  See
		
		              http://en.wikipedia.org/wiki/Percentile_rank
		
		Returns
		-------
		TimeSeries or DataFrame, depending on input
	**/
	static public function percentileRank(frame:Dynamic, ?column:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		The percentile rank of a score relative to a list of scores.
		
		A `percentileofscore` of, for example, 80% means that 80% of the
		scores in `a` are below the given score. In the case of gaps or
		ties, the exact definition depends on the optional keyword, `kind`.
		
		Parameters
		----------
		a: array like
		    Array of scores to which `score` is compared.
		score: int or float
		    Score that is compared to the elements in `a`.
		kind: {'rank', 'weak', 'strict', 'mean'}, optional
		    This optional parameter specifies the interpretation of the
		    resulting score:
		
		    - "rank": Average percentage ranking of score.  In case of
		              multiple matches, average the percentage rankings of
		              all matching scores.
		    - "weak": This kind corresponds to the definition of a cumulative
		              distribution function.  A percentileofscore of 80%
		              means that 80% of values are less than or equal
		              to the provided score.
		    - "strict": Similar to "weak", except that only values that are
		                strictly less than the given score are counted.
		    - "mean": The average of the "weak" and "strict" scores, often used in
		              testing.  See
		
		              http://en.wikipedia.org/wiki/Percentile_rank
		
		Returns
		-------
		pcos : float
		    Percentile-position of score (0-100) relative to `a`.
		
		Examples
		--------
		Three-quarters of the given values lie below a given score:
		
		>>> percentileofscore([1, 2, 3, 4], 3)
		75.0
		
		With multiple matches, note how the scores of the two matches, 0.6
		and 0.8 respectively, are averaged:
		
		>>> percentileofscore([1, 2, 3, 3, 4], 3)
		70.0
		
		Only 2/5 values are strictly less than 3:
		
		>>> percentileofscore([1, 2, 3, 3, 4], 3, kind='strict')
		40.0
		
		But 4/5 values are less than or equal to 3:
		
		>>> percentileofscore([1, 2, 3, 3, 4], 3, kind='weak')
		80.0
		
		The average between the weak and the strict scores is
		
		>>> percentileofscore([1, 2, 3, 3, 4], 3, kind='mean')
		60.0
	**/
	static public function percentileofscore(a:Dynamic, score:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Return series containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na(series:Dynamic):Dynamic;
	static public function zscore(series:Dynamic):Dynamic;
}