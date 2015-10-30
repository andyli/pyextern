/* This file is generated, do not edit! */
package scipy.stats._rank;
@:pythonImport("scipy.stats._rank") extern class _Rank_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _tie_method_map : Dynamic;
	/**
		rankdata(a, method='average')
		
		Assign ranks to data, dealing with ties appropriately.
		
		Ranks begin at 1.  The `method` argument controls how ranks are assigned
		to equal values.  See [1]_ for further discussion of ranking methods.
		
		Parameters
		----------
		a : array_like
		    The array of values to be ranked.  The array is first flattened.
		method : str, optional
		    The method used to assign ranks to tied elements.
		    The options are 'average', 'min', 'max', 'dense' and 'ordinal'.
		
		    'average':
		        The average of the ranks that would have been assigned to
		        all the tied values is assigned to each value.
		    'min':
		        The minimum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.  (This is also
		        referred to as "competition" ranking.)
		    'max':
		        The maximum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.
		    'dense':
		        Like 'min', but the rank of the next highest element is assigned
		        the rank immediately after those assigned to the tied elements.
		    'ordinal':
		        All values are given a distinct rank, corresponding to the order
		        that the values occur in `a`.
		
		    The default is 'average'.
		
		Returns
		-------
		ranks : ndarray
		     An array of length equal to the size of `a`, containing rank
		     scores.
		
		Notes
		-----
		All floating point types are converted to numpy.float64 before ranking.
		This may result in spurious ties if an input array of floats has a wider
		data type than numpy.float64 (e.g. numpy.float128).
		
		References
		----------
		.. [1] "Ranking", http://en.wikipedia.org/wiki/Ranking
		
		Examples
		--------
		>>> from scipy.stats import rankdata
		>>> rankdata([0, 2, 3, 2])
		array([ 1. ,  2.5,  4. ,  2.5])
		>>> rankdata([0, 2, 3, 2], method='min')
		array([ 1.,  2.,  4.,  2.])
		>>> rankdata([0, 2, 3, 2], method='max')
		array([ 1.,  3.,  4.,  3.])
		>>> rankdata([0, 2, 3, 2], method='dense')
		array([ 1.,  2.,  3.,  2.])
		>>> rankdata([0, 2, 3, 2], method='ordinal')
		array([ 1.,  2.,  4.,  3.])
	**/
	static public function rankdata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tiecorrect(rankvals)
		
		Tie correction factor for ties in the Mann-Whitney U and
		Kruskal-Wallis H tests.
		
		Parameters
		----------
		rankvals : array_like
		    A 1-D sequence of ranks.  Typically this will be the array
		    returned by `stats.rankdata`.
		
		Returns
		-------
		factor : float
		    Correction factor for U or H.
		
		See Also
		--------
		rankdata : Assign ranks to the data
		mannwhitneyu : Mann-Whitney rank test
		kruskal : Kruskal-Wallis H test
		
		References
		----------
		.. [1] Siegel, S. (1956) Nonparametric Statistics for the Behavioral
		       Sciences.  New York: McGraw-Hill.
		
		Examples
		--------
		>>> from scipy.stats import tiecorrect, rankdata
		>>> tiecorrect([1, 2.5, 2.5, 4])
		0.9
		>>> ranks = rankdata([1, 3, 2, 4, 5, 7, 2, 8, 4])
		>>> ranks
		array([ 1. ,  4. ,  2.5,  5.5,  7. ,  8. ,  2.5,  9. ,  5.5])
		>>> tiecorrect(ranks)
		0.9833333333333333
	**/
	static public function tiecorrect(args:haxe.extern.Rest<Dynamic>):Dynamic;
}