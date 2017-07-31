/* This file is generated, do not edit! */
package pandas.core.reshape.api;
@:pythonImport("pandas.core.reshape.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes.
		
		Can also add a layer of hierarchical indexing on the concatenation axis,
		which may be useful if the labels are the same (or overlapping) on
		the passed axis number.
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0/'index', 1/'columns'}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the index values on the other
		    axes are still respected in the join.
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Returns
		-------
		concatenated : type of objects
		
		Notes
		-----
		The keys, levels, and names arguments are all optional.
		
		A walkthrough of how this method fits in with other tools for combining
		panda objects can be found `here
		<http://pandas.pydata.org/pandas-docs/stable/merging.html>`__.
		
		See Also
		--------
		Series.append
		DataFrame.append
		DataFrame.join
		DataFrame.merge
		
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
		
		>>> pd.concat([s1, s2], keys=['s1', 's2',])
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
		>>> pd.concat([df1, df3])
		  animal letter  number
		0    NaN      a       1
		1    NaN      b       2
		0    cat      c       3
		1    dog      d       4
		
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
		ValueError: Indexes have overlapping values: ['a']
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Compute a simple cross-tabulation of two (or more) factors. By default
		computes a frequency table of the factors unless an array of values and an
		aggregation function are passed
		
		Parameters
		----------
		index : array-like, Series, or list of arrays/Series
		    Values to group by in the rows
		columns : array-like, Series, or list of arrays/Series
		    Values to group by in the columns
		values : array-like, optional
		    Array of values to aggregate according to the factors.
		    Requires `aggfunc` be specified.
		aggfunc : function, optional
		    If specified, requires `values` be specified as well
		rownames : sequence, default None
		    If passed, must match number of row arrays passed
		colnames : sequence, default None
		    If passed, must match number of column arrays passed
		margins : boolean, default False
		    Add row/column margins (subtotals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		normalize : boolean, {'all', 'index', 'columns'}, or {0,1}, default False
		    Normalize by dividing all values by the sum of values.
		
		    - If passed 'all' or `True`, will normalize over all values.
		    - If passed 'index' will normalize over each row.
		    - If passed 'columns' will normalize over each column.
		    - If margins is `True`, will also normalize margin values.
		
		    .. versionadded:: 0.18.1
		
		
		Notes
		-----
		Any Series passed will have their name attributes used unless row or column
		names for the cross-tabulation are specified.
		
		Any input passed containing Categorical data will have **all** of its
		categories included in the cross-tabulation, even if the actual data does
		not contain any instances of a particular category.
		
		In the event that there aren't overlapping indexes an empty DataFrame will
		be returned.
		
		Examples
		--------
		>>> a
		array([foo, foo, foo, foo, bar, bar,
		       bar, bar, foo, foo, foo], dtype=object)
		>>> b
		array([one, one, one, two, one, one,
		       one, two, two, two, one], dtype=object)
		>>> c
		array([dull, dull, shiny, dull, dull, shiny,
		       shiny, dull, shiny, shiny, shiny], dtype=object)
		
		>>> crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])
		b    one          two
		c    dull  shiny  dull  shiny
		a
		bar  1     2      1     0
		foo  2     2      1     2
		
		>>> foo = pd.Categorical(['a', 'b'], categories=['a', 'b', 'c'])
		>>> bar = pd.Categorical(['d', 'e'], categories=['d', 'e', 'f'])
		>>> crosstab(foo, bar)  # 'c' and 'f' are not represented in the data,
		                        # but they still will be counted in the output
		col_0  d  e  f
		row_0
		a      1  0  0
		b      0  1  0
		c      0  0  0
		
		Returns
		-------
		crosstab : DataFrame
	**/
	static public function crosstab(index:Dynamic, columns:Dynamic, ?values:Dynamic, ?rownames:Dynamic, ?colnames:Dynamic, ?aggfunc:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?normalize:Dynamic):pandas.DataFrame;
	/**
		Return indices of half-open bins to which each value of `x` belongs.
		
		Parameters
		----------
		x : array-like
		    Input array to be binned. It has to be 1-dimensional.
		bins : int, sequence of scalars, or IntervalIndex
		    If `bins` is an int, it defines the number of equal-width bins in the
		    range of `x`. However, in this case, the range of `x` is extended
		    by .1% on each side to include the min or max values of `x`. If
		    `bins` is a sequence it defines the bin edges allowing for
		    non-uniform bin width. No extension of the range of `x` is done in
		    this case.
		right : bool, optional
		    Indicates whether the bins include the rightmost edge or not. If
		    right == True (the default), then the bins [1,2,3,4] indicate
		    (1,2], (2,3], (3,4].
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the bins or not. Can be useful if bins is given
		    as a scalar.
		precision : int, optional
		    The precision at which to store and display the bins labels
		include_lowest : bool, optional
		    Whether the first interval should be left-inclusive or not.
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		The `cut` function can be useful for going from a continuous variable to
		a categorical variable. For example, `cut` could convert ages to groups
		of age ranges.
		
		Any NA values will be NA in the result.  Out of bounds values will be NA in
		the resulting Categorical object
		
		
		Examples
		--------
		>>> pd.cut(np.array([.2, 1.4, 2.5, 6.2, 9.7, 2.1]), 3, retbins=True)
		([(0.191, 3.367], (0.191, 3.367], (0.191, 3.367], (3.367, 6.533],
		  (6.533, 9.7], (0.191, 3.367]]
		Categories (3, object): [(0.191, 3.367] < (3.367, 6.533] < (6.533, 9.7]],
		array([ 0.1905    ,  3.36666667,  6.53333333,  9.7       ]))
		
		>>> pd.cut(np.array([.2, 1.4, 2.5, 6.2, 9.7, 2.1]), 3,
		           labels=["good","medium","bad"])
		[good, good, good, medium, bad, good]
		Categories (3, object): [good < medium < bad]
		
		>>> pd.cut(np.ones(5), 4, labels=False)
		array([1, 1, 1, 1, 1], dtype=int64)
	**/
	static public function cut(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic):Dynamic;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally
		leaving identifier variables set.
		
		This function is useful to massage a DataFrame into a format where one
		or more columns are identifier variables (`id_vars`), while all other
		columns, considered measured variables (`value_vars`), are "unpivoted" to
		the row axis, leaving just two non-identifier columns, 'variable' and
		'value'.
		
		
		Parameters
		----------
		frame : DataFrame
		id_vars : tuple, list, or ndarray, optional
		    Column(s) to use as identifier variables.
		value_vars : tuple, list, or ndarray, optional
		    Column(s) to unpivot. If not specified, uses all columns that
		    are not set as `id_vars`.
		var_name : scalar
		    Name to use for the 'variable' column. If None it uses
		    ``frame.columns.name`` or 'variable'.
		value_name : scalar, default 'value'
		    Name to use for the 'value' column.
		col_level : int or string, optional
		    If columns are a MultiIndex then use this level to melt.
		
		See also
		--------
		DataFrame.melt
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
		>>> import pandas as pd
		>>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
		...                    'B': {0: 1, 1: 3, 2: 5},
		...                    'C': {0: 2, 1: 4, 2: 6}})
		>>> df
		   A  B  C
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B', 'C'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		3  a        C      2
		4  b        C      4
		5  c        C      6
		
		The names of 'variable' and 'value' columns can be customized:
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'],
		...         var_name='myVarname', value_name='myValname')
		   A myVarname  myValname
		0  a         B          1
		1  b         B          3
		2  c         B          5
		
		If you have multi-index columns:
		
		>>> df.columns = [list('ABC'), list('DEF')]
		>>> df
		   A  B  C
		   D  E  F
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, col_level=0, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=[('A', 'D')], value_vars=[('B', 'E')])
		  (A, D) variable_0 variable_1  value
		0      a          B          E      1
		1      b          B          E      3
		2      c          B          E      5
	**/
	static public function melt(frame:Dynamic, ?id_vars:Dynamic, ?value_vars:Dynamic, ?var_name:Dynamic, ?value_name:Dynamic, ?col_level:Dynamic):Dynamic;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		how : {'left', 'right', 'outer', 'inner'}, default 'inner'
		    * left: use only keys from left frame, similar to a SQL left outer join;
		      preserve key order
		    * right: use only keys from right frame, similar to a SQL right outer join;
		      preserve key order
		    * outer: use union of keys from both frames, similar to a SQL full outer
		      join; sort keys lexicographically
		    * inner: use intersection of keys from both frames, similar to a SQL inner
		      join; preserve the order of the left keys
		on : label or list
		    Field names to join on. Must be found in both DataFrames. If on is
		    None and not merging on indexes, then it merges on the intersection of
		    the columns by default.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_index : boolean, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels
		right_index : boolean, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index
		sort : boolean, default False
		    Sort the join keys lexicographically in the result DataFrame. If False,
		    the order of the join keys depends on the join type (how keyword)
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		indicator : boolean or string, default False
		    If True, adds a column to output DataFrame called "_merge" with
		    information on the source of each row.
		    If string, column with information on source of each row will be added to
		    output DataFrame, and column will be named value of string.
		    Information column is Categorical-type and takes on a value of "left_only"
		    for observations whose merge key only appears in 'left' DataFrame,
		    "right_only" for observations whose merge key only appears in 'right'
		    DataFrame, and "both" if the observation's merge key is found in both.
		
		    .. versionadded:: 0.17.0
		
		Examples
		--------
		
		>>> A              >>> B
		    lkey value         rkey value
		0   foo  1         0   foo  5
		1   bar  2         1   bar  6
		2   baz  3         2   qux  7
		3   foo  4         3   bar  8
		
		>>> A.merge(B, left_on='lkey', right_on='rkey', how='outer')
		   lkey  value_x  rkey  value_y
		0  foo   1        foo   5
		1  foo   4        foo   5
		2  bar   2        bar   6
		3  bar   2        bar   8
		4  baz   3        NaN   NaN
		5  NaN   NaN      qux   7
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge_ordered
		merge_asof
	**/
	static public function merge(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic):pandas.DataFrame;
	/**
		Perform an asof merge. This is similar to a left-join except that we
		match on nearest key rather than equal keys.
		
		Both DataFrames must be sorted by the key.
		
		For each row in the left DataFrame:
		
		  - A "backward" search selects the last row in the right DataFrame whose
		    'on' key is less than or equal to the left's key.
		
		  - A "forward" search selects the first row in the right DataFrame whose
		    'on' key is greater than or equal to the left's key.
		
		  - A "nearest" search selects the row in the right DataFrame whose 'on'
		    key is closest in absolute distance to the left's key.
		
		The default is "backward" and is compatible in versions below 0.20.0.
		The direction parameter was added in version 0.20.0 and introduces
		"forward" and "nearest".
		
		Optionally match on equivalent keys with 'by' before searching with 'on'.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label
		    Field name to join on. Must be found in both DataFrames.
		    The data MUST be ordered. Furthermore this must be a numeric column,
		    such as datetimelike, integer, or float. On or left_on/right_on
		    must be given.
		left_on : label
		    Field name to join on in left DataFrame.
		right_on : label
		    Field name to join on in right DataFrame.
		left_index : boolean
		    Use the index of the left DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		right_index : boolean
		    Use the index of the right DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		by : column name or list of column names
		    Match on these columns before performing merge operation.
		left_by : column name
		    Field names to match on in the left DataFrame.
		
		    .. versionadded:: 0.19.2
		
		right_by : column name
		    Field names to match on in the right DataFrame.
		
		    .. versionadded:: 0.19.2
		
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively.
		tolerance : integer or Timedelta, optional, default None
		    Select asof tolerance within this range; must be compatible
		    with the merge index.
		allow_exact_matches : boolean, default True
		
		    - If True, allow matching with the same 'on' value
		      (i.e. less-than-or-equal-to / greater-than-or-equal-to)
		    - If False, don't match the same 'on' value
		      (i.e., stricly less-than / strictly greater-than)
		
		direction : 'backward' (default), 'forward', or 'nearest'
		    Whether to search for prior, subsequent, or closest matches.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		merged : DataFrame
		
		Examples
		--------
		>>> left
		    a left_val
		0   1        a
		1   5        b
		2  10        c
		
		>>> right
		   a  right_val
		0  1          1
		1  2          2
		2  3          3
		3  6          6
		4  7          7
		
		>>> pd.merge_asof(left, right, on='a')
		    a left_val  right_val
		0   1        a          1
		1   5        b          3
		2  10        c          7
		
		>>> pd.merge_asof(left, right, on='a', allow_exact_matches=False)
		    a left_val  right_val
		0   1        a        NaN
		1   5        b        3.0
		2  10        c        7.0
		
		>>> pd.merge_asof(left, right, on='a', direction='forward')
		    a left_val  right_val
		0   1        a        1.0
		1   5        b        6.0
		2  10        c        NaN
		
		>>> pd.merge_asof(left, right, on='a', direction='nearest')
		    a left_val  right_val
		0   1        a          1
		1   5        b          6
		2  10        c          7
		
		We can use indexed DataFrames as well.
		
		>>> left
		   left_val
		1         a
		5         b
		10        c
		
		>>> right
		   right_val
		1          1
		2          2
		3          3
		6          6
		7          7
		
		>>> pd.merge_asof(left, right, left_index=True, right_index=True)
		   left_val  right_val
		1         a          1
		5         b          3
		10        c          7
		
		Here is a real-world times-series example
		
		>>> quotes
		                     time ticker     bid     ask
		0 2016-05-25 13:30:00.023   GOOG  720.50  720.93
		1 2016-05-25 13:30:00.023   MSFT   51.95   51.96
		2 2016-05-25 13:30:00.030   MSFT   51.97   51.98
		3 2016-05-25 13:30:00.041   MSFT   51.99   52.00
		4 2016-05-25 13:30:00.048   GOOG  720.50  720.93
		5 2016-05-25 13:30:00.049   AAPL   97.99   98.01
		6 2016-05-25 13:30:00.072   GOOG  720.50  720.88
		7 2016-05-25 13:30:00.075   MSFT   52.01   52.03
		
		>>> trades
		                     time ticker   price  quantity
		0 2016-05-25 13:30:00.023   MSFT   51.95        75
		1 2016-05-25 13:30:00.038   MSFT   51.95       155
		2 2016-05-25 13:30:00.048   GOOG  720.77       100
		3 2016-05-25 13:30:00.048   GOOG  720.92       100
		4 2016-05-25 13:30:00.048   AAPL   98.00       100
		
		By default we are taking the asof of the quotes
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker')
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 2ms betwen the quote time and the trade time
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('2ms'))
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 10ms betwen the quote time and the trade time
		and we exclude exact matches on time. However *prior* data will
		propogate forward
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('10ms'),
		...                       allow_exact_matches=False)
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		See also
		--------
		merge
		merge_ordered
	**/
	static public function merge_asof(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?suffixes:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):pandas.DataFrame;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> ordered_merge(A, B, fill_method='ffill', left_by='group')
		   key  lvalue group  rvalue
		0    a       1     a     NaN
		1    b       1     a       1
		2    c       2     a       2
		3    d       2     a       3
		4    e       3     a       3
		5    f       3     a       4
		6    a       1     b     NaN
		7    b       1     b       1
		8    c       2     b       2
		9    d       2     b       3
		10   e       3     b       3
		11   f       3     b       4
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function merge_ordered(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic, ?how:Dynamic):pandas.DataFrame;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> ordered_merge(A, B, fill_method='ffill', left_by='group')
		   key  lvalue group  rvalue
		0    a       1     a     NaN
		1    b       1     a       1
		2    c       2     a       2
		3    d       2     a       3
		4    e       3     a       3
		5    f       3     a       4
		6    a       1     b     NaN
		7    b       1     b       1
		8    c       2     b       2
		9    d       2     b       3
		10   e       3     b       3
		11   f       3     b       4
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function ordered_merge(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic):pandas.DataFrame;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in the
		pivot table will be stored in MultiIndex objects (hierarchical indexes) on
		the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed, it
		    is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed, it
		    is being used as the same manner as column values.
		aggfunc : function or list of functions, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names (inferred
		    from the function objects themselves)
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		Examples
		--------
		>>> df
		   A   B   C      D
		0  foo one small  1
		1  foo one large  2
		2  foo one large  2
		3  foo two small  3
		4  foo two small  3
		5  bar one large  4
		6  bar one small  5
		7  bar two small  6
		8  bar two large  7
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		          small  large
		foo  one  1      4
		     two  6      NaN
		bar  one  5      4
		     two  6      7
		
		Returns
		-------
		table : DataFrame
		
		See also
		--------
		DataFrame.pivot : pivot without aggregation that can handle
		    non-numeric data
	**/
	static public function pivot_table(data:Dynamic, ?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
	/**
		Quantile-based discretization function. Discretize variable into
		equal-sized buckets based on rank or based on sample quantiles. For example
		1000 values for 10 quantiles would produce a Categorical object indicating
		quantile membership for each data point.
		
		Parameters
		----------
		x : ndarray or Series
		q : integer or array of quantiles
		    Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
		    array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the (bins, labels) or not. Can be useful if bins
		    is given as a scalar.
		precision : int, optional
		    The precision at which to store and display the bins labels
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		Out of bounds values will be NA in the resulting Categorical object
		
		Examples
		--------
		>>> pd.qcut(range(5), 4)
		[[0, 1], [0, 1], (1, 2], (2, 3], (3, 4]]
		Categories (4, object): [[0, 1] < (1, 2] < (2, 3] < (3, 4]]
		
		>>> pd.qcut(range(5), 3, labels=["good","medium","bad"])
		[good, good, medium, bad, bad]
		Categories (3, object): [good < medium < bad]
		
		>>> pd.qcut(range(5), 4, labels=False)
		array([0, 0, 1, 2, 3], dtype=int64)
	**/
	static public function qcut(x:Dynamic, q:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?duplicates:Dynamic):Dynamic;
}