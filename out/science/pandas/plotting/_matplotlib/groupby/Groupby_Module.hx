/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.groupby;
@:pythonImport("pandas.plotting._matplotlib.groupby") extern class Groupby_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IndexLabel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes.
		
		Can also add a layer of hierarchical indexing on the concatenation axis,
		which may be useful if the labels are the same (or overlapping) on
		the passed axis number.
		
		Parameters
		----------
		objs : a sequence or mapping of Series or DataFrame objects
		    If a mapping is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised.
		axis : {0/'index', 1/'columns'}, default 0
		    The axis to concatenate along.
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis (or axes).
		ignore_index : bool, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the index values on the other
		    axes are still respected in the join.
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level.
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys.
		names : list, default None
		    Names for the levels in the resulting hierarchical index.
		verify_integrity : bool, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation.
		sort : bool, default False
		    Sort non-concatenation axis if it is not already aligned when `join`
		    is 'outer'.
		    This has no effect when ``join='inner'``, which already preserves
		    the order of the non-concatenation axis.
		
		    .. versionchanged:: 1.0.0
		
		       Changed to not sort by default.
		
		copy : bool, default True
		    If False, do not copy data unnecessarily.
		
		Returns
		-------
		object, type of objs
		    When concatenating all ``Series`` along the index (axis=0), a
		    ``Series`` is returned. When ``objs`` contains at least one
		    ``DataFrame``, a ``DataFrame`` is returned. When concatenating along
		    the columns (axis=1), a ``DataFrame`` is returned.
		
		See Also
		--------
		Series.append : Concatenate Series.
		DataFrame.append : Concatenate DataFrames.
		DataFrame.join : Join DataFrames using indexes.
		DataFrame.merge : Merge DataFrames by indexes or columns.
		
		Notes
		-----
		The keys, levels, and names arguments are all optional.
		
		A walkthrough of how this method fits in with other tools for combining
		pandas objects can be found `here
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html>`__.
		
		Examples
		--------
		Combine two ``Series``.
		
		>>> s1 = pd.Series(['a', 'b'])
		>>> s2 = pd.Series(['c', 'd'])
		>>> pd.concat([s1, s2])
		0    a
		1    b
		0    c
		1    d
		dtype: object
		
		Clear the existing index and reset it in the result
		by setting the ``ignore_index`` option to ``True``.
		
		>>> pd.concat([s1, s2], ignore_index=True)
		0    a
		1    b
		2    c
		3    d
		dtype: object
		
		Add a hierarchical index at the outermost level of
		the data with the ``keys`` option.
		
		>>> pd.concat([s1, s2], keys=['s1', 's2'])
		s1  0    a
		    1    b
		s2  0    c
		    1    d
		dtype: object
		
		Label the index keys you create with the ``names`` option.
		
		>>> pd.concat([s1, s2], keys=['s1', 's2'],
		...           names=['Series name', 'Row ID'])
		Series name  Row ID
		s1           0         a
		             1         b
		s2           0         c
		             1         d
		dtype: object
		
		Combine two ``DataFrame`` objects with identical columns.
		
		>>> df1 = pd.DataFrame([['a', 1], ['b', 2]],
		...                    columns=['letter', 'number'])
		>>> df1
		  letter  number
		0      a       1
		1      b       2
		>>> df2 = pd.DataFrame([['c', 3], ['d', 4]],
		...                    columns=['letter', 'number'])
		>>> df2
		  letter  number
		0      c       3
		1      d       4
		>>> pd.concat([df1, df2])
		  letter  number
		0      a       1
		1      b       2
		0      c       3
		1      d       4
		
		Combine ``DataFrame`` objects with overlapping columns
		and return everything. Columns outside the intersection will
		be filled with ``NaN`` values.
		
		>>> df3 = pd.DataFrame([['c', 3, 'cat'], ['d', 4, 'dog']],
		...                    columns=['letter', 'number', 'animal'])
		>>> df3
		  letter  number animal
		0      c       3    cat
		1      d       4    dog
		>>> pd.concat([df1, df3], sort=False)
		  letter  number animal
		0      a       1    NaN
		1      b       2    NaN
		0      c       3    cat
		1      d       4    dog
		
		Combine ``DataFrame`` objects with overlapping columns
		and return only those that are shared by passing ``inner`` to
		the ``join`` keyword argument.
		
		>>> pd.concat([df1, df3], join="inner")
		  letter  number
		0      a       1
		1      b       2
		0      c       3
		1      d       4
		
		Combine ``DataFrame`` objects horizontally along the x axis by
		passing in ``axis=1``.
		
		>>> df4 = pd.DataFrame([['bird', 'polly'], ['monkey', 'george']],
		...                    columns=['animal', 'name'])
		>>> pd.concat([df1, df4], axis=1)
		  letter  number  animal    name
		0      a       1    bird   polly
		1      b       2  monkey  george
		
		Prevent the result from including duplicate index values with the
		``verify_integrity`` option.
		
		>>> df5 = pd.DataFrame([1], index=['a'])
		>>> df5
		   0
		a  1
		>>> df6 = pd.DataFrame([2], index=['a'])
		>>> df6
		   0
		a  2
		>>> pd.concat([df5, df6], verify_integrity=True)
		Traceback (most recent call last):
		    ...
		ValueError: Indexes have overlapping values: ['a']
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Create data for iteration given `by` is assigned or not, and it is only
		used in both hist and boxplot.
		
		If `by` is assigned, return a dictionary of DataFrames in which the key of
		dictionary is the values in groups.
		If `by` is not assigned, return input as is, and this preserves current
		status of iter_data.
		
		Parameters
		----------
		data : reformatted grouped data from `_compute_plot_data` method.
		kind : str, plot kind. This function is only used for `hist` and `box` plots.
		
		Returns
		-------
		iter_data : DataFrame or Dictionary of DataFrames
		
		Examples
		--------
		If `by` is assigned:
		
		>>> import numpy as np
		>>> tuples = [('h1', 'a'), ('h1', 'b'), ('h2', 'a'), ('h2', 'b')]
		>>> mi = MultiIndex.from_tuples(tuples)
		>>> value = [[1, 3, np.nan, np.nan],
		...          [3, 4, np.nan, np.nan], [np.nan, np.nan, 5, 6]]
		>>> data = DataFrame(value, columns=mi)
		>>> create_iter_data_given_by(data)
		{'h1':     h1
		     a    b
		0  1.0  3.0
		1  3.0  4.0
		2  NaN  NaN, 'h2':     h2
		     a    b
		0  NaN  NaN
		1  NaN  NaN
		2  5.0  6.0}
	**/
	static public function create_iter_data_given_by(data:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Internal function to group data, and reassign multiindex column names onto the
		result in order to let grouped data be used in _compute_plot_data method.
		
		Parameters
		----------
		data : Original DataFrame to plot
		by : grouped `by` parameter selected by users
		cols : columns of data set (excluding columns used in `by`)
		
		Returns
		-------
		Output is the reconstructed DataFrame with MultiIndex columns. The first level
		of MI is unique values of groups, and second level of MI is the columns
		selected by users.
		
		Examples
		--------
		>>> d = {'h': ['h1', 'h1', 'h2'], 'a': [1, 3, 5], 'b': [3, 4, 6]}
		>>> df = DataFrame(d)
		>>> reconstruct_data_with_by(df, by='h', cols=['a', 'b'])
		   h1      h2
		   a     b     a     b
		0  1.0   3.0   NaN   NaN
		1  3.0   4.0   NaN   NaN
		2  NaN   NaN   5.0   6.0
	**/
	static public function reconstruct_data_with_by(data:Dynamic, by:Dynamic, cols:Dynamic):Dynamic;
	/**
		Internal function to reformat y given `by` is applied or not for hist plot.
		
		If by is None, input y is 1-d with NaN removed; and if by is not None, groupby
		will take place and input y is multi-dimensional array.
	**/
	static public function reformat_hist_y_given_by(y:Dynamic, by:Dynamic):Dynamic;
	/**
		Return array-like containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na_arraylike(arr:Dynamic):Dynamic;
}