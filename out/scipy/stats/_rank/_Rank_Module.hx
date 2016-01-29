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