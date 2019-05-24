/* This file is generated, do not edit! */
package pandas.core.groupby.categorical;
@:pythonImport("pandas.core.groupby.categorical") extern class Categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a set of codes for to a new set of categories
		
		Parameters
		----------
		codes : array
		old_categories, new_categories : Index
		
		Returns
		-------
		new_codes : array
		
		Examples
		--------
		>>> old_cat = pd.Index(['b', 'a', 'c'])
		>>> new_cat = pd.Index(['a', 'b'])
		>>> codes = np.array([0, 1, 1, 2])
		>>> _recode_for_categories(codes, old_cat, new_cat)
		array([ 1,  0,  0, -1])
	**/
	static public function _recode_for_categories(codes:Dynamic, old_categories:Dynamic, new_categories:Dynamic):Dynamic;
	/**
		Code the categories to ensure we can groupby for categoricals.
		
		If observed=True, we return a new Categorical with the observed
		categories only.
		
		If sort=False, return a copy of self, coded with categories as
		returned by .unique(), followed by any categories not appearing in
		the data. If sort=True, return self.
		
		This method is needed solely to ensure the categorical index of the
		GroupBy result has categories in the order of appearance in the data
		(GH-8868).
		
		Parameters
		----------
		c : Categorical
		sort : boolean
		    The value of the sort parameter groupby was called with.
		observed : boolean
		    Account only for the observed values
		
		Returns
		-------
		New Categorical
		    If sort=False, the new categories are set to the order of
		    appearance in codes (unless ordered=True, in which case the
		    original order is preserved), followed by any unrepresented
		    categories in the original order.
		Categorical or None
		    If we are observed, return the original categorical, otherwise None
	**/
	static public function recode_for_groupby(c:Dynamic, sort:Dynamic, observed:Dynamic):Dynamic;
	/**
		Reverse the codes_to_groupby to account for sort / observed.
		
		Parameters
		----------
		c : Categorical
		sort : boolean
		    The value of the sort parameter groupby was called with.
		ci : CategoricalIndex
		    The codes / categories to recode
		
		Returns
		-------
		CategoricalIndex
	**/
	static public function recode_from_groupby(c:Dynamic, sort:Dynamic, ci:Dynamic):Dynamic;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101'),
		...                     pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'),
		...                                    ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique1d(values:Dynamic):Dynamic;
}