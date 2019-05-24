/* This file is generated, do not edit! */
package pandas.core.reshape.pivot;
@:pythonImport("pandas.core.reshape.pivot") extern class Pivot_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_margins(table:Dynamic, data:Dynamic, values:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic, ?observed:Dynamic, ?margins_name:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _compute_grand_margin(data:Dynamic, values:Dynamic, aggfunc:Dynamic, ?margins_name:Dynamic):Dynamic;
	static public function _convert_by(by:Dynamic):Dynamic;
	static public function _generate_marginal_results(table:Dynamic, data:Dynamic, values:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic, observed:Dynamic, grand_margin:Dynamic, ?margins_name:Dynamic):Dynamic;
	static public function _generate_marginal_results_without_values(table:Dynamic, data:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic, observed:Dynamic, ?margins_name:Dynamic):Dynamic;
	static public function _get_names(arrs:Dynamic, names:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Extract combined index: return intersection or union (depending on the
		value of "intersect") of indexes on given axis, or None if all objects
		lack indexes (e.g. they are numpy arrays).
		
		Parameters
		----------
		objs : list of objects
		    Each object will only be considered if it has a _get_axis
		    attribute.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		axis : {0 or 'index', 1 or 'outer'}, default 0
		    The axis to extract indexes from.
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _normalize(table:Dynamic, normalize:Dynamic, margins:Dynamic, ?margins_name:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Parameters
		----------
		X : list-like of list-likes
		
		Returns
		-------
		product : list of ndarrays
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
		
		See Also
		--------
		itertools.product : Cartesian product of input iterables.  Equivalent to
		    nested for-loops.
		pandas.compat.product : An alias for itertools.product.
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
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
		sort : boolean, default None
		    Sort non-concatenation axis if it is not already aligned when `join`
		    is 'outer'. The current default of sorting is deprecated and will
		    change to not-sorting in a future version of pandas.
		
		    Explicitly pass ``sort=True`` to silence the warning and sort.
		    Explicitly pass ``sort=False`` to silence the warning and not sort.
		
		    This has no effect when ``join='inner'``, which already preserves
		    the order of the non-concatenation axis.
		
		    .. versionadded:: 0.23.0
		
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Returns
		-------
		concatenated : object, type of objs
		    When concatenating all ``Series`` along the index (axis=0), a
		    ``Series`` is returned. When ``objs`` contains at least one
		    ``DataFrame``, a ``DataFrame`` is returned. When concatenating along
		    the columns (axis=1), a ``DataFrame`` is returned.
		
		See Also
		--------
		Series.append
		DataFrame.append
		DataFrame.join
		DataFrame.merge
		
		Notes
		-----
		The keys, levels, and names arguments are all optional.
		
		A walkthrough of how this method fits in with other tools for combining
		pandas objects can be found `here
		<http://pandas.pydata.org/pandas-docs/stable/merging.html>`__.
		
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
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
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
		rownames : sequence, default None
		    If passed, must match number of row arrays passed
		colnames : sequence, default None
		    If passed, must match number of column arrays passed
		aggfunc : function, optional
		    If specified, requires `values` be specified as well
		margins : boolean, default False
		    Add row/column margins (subtotals)
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		    .. versionadded:: 0.21.0
		
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		normalize : boolean, {'all', 'index', 'columns'}, or {0,1}, default False
		    Normalize by dividing all values by the sum of values.
		
		    - If passed 'all' or `True`, will normalize over all values.
		    - If passed 'index' will normalize over each row.
		    - If passed 'columns' will normalize over each column.
		    - If margins is `True`, will also normalize margin values.
		
		    .. versionadded:: 0.18.1
		
		Returns
		-------
		crosstab : DataFrame
		
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
		>>> a = np.array(["foo", "foo", "foo", "foo", "bar", "bar",
		...               "bar", "bar", "foo", "foo", "foo"], dtype=object)
		>>> b = np.array(["one", "one", "one", "two", "one", "one",
		...               "one", "two", "two", "two", "one"], dtype=object)
		>>> c = np.array(["dull", "dull", "shiny", "dull", "dull", "shiny",
		...               "shiny", "dull", "shiny", "shiny", "shiny"],
		...               dtype=object)
		
		>>> pd.crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])
		... # doctest: +NORMALIZE_WHITESPACE
		b   one        two
		c   dull shiny dull shiny
		a
		bar    1     2    1     0
		foo    2     2    1     2
		
		>>> foo = pd.Categorical(['a', 'b'], categories=['a', 'b', 'c'])
		>>> bar = pd.Categorical(['d', 'e'], categories=['d', 'e', 'f'])
		>>> crosstab(foo, bar)  # 'c' and 'f' are not represented in the data,
		                        # and will not be shown in the output because
		                        # dropna is True by default. Set 'dropna=False'
		                        # to preserve categories with no data
		... # doctest: +SKIP
		col_0  d  e
		row_0
		a      1  0
		b      0  1
		
		>>> crosstab(foo, bar, dropna=False)  # 'c' and 'f' are not represented
		                        # in the data, but they still will be counted
		                        # and shown in the output
		... # doctest: +SKIP
		col_0  d  e  f
		row_0
		a      1  0  0
		b      0  1  0
		c      0  0  0
	**/
	static public function crosstab(index:Dynamic, columns:Dynamic, ?values:Dynamic, ?rownames:Dynamic, ?colnames:Dynamic, ?aggfunc:Dynamic, ?margins:Dynamic, ?margins_name:Dynamic, ?dropna:Dynamic, ?normalize:Dynamic):pandas.DataFrame;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	/**
		Return True if given value is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Return reshaped DataFrame organized by given index / column values.
		
		Reshape data (produce a "pivot" table) based on column values. Uses
		unique values from specified `index` / `columns` to form axes of the
		resulting DataFrame. This function does not support data
		aggregation, multiple values will result in a MultiIndex in the
		columns. See the :ref:`User Guide <reshaping>` for more on reshaping.
		
		Parameters
		----------
		data : DataFrame
		index : string or object, optional
		    Column to use to make new frame's index. If None, uses
		    existing index.
		columns : string or object
		    Column to use to make new frame's columns.
		values : string, object or a list of the previous, optional
		    Column(s) to use for populating new frame's values. If not
		    specified, all remaining columns will be used and the result will
		    have hierarchically indexed columns.
		
		    .. versionchanged :: 0.23.0
		       Also accept list of column names.
		
		Returns
		-------
		DataFrame
		    Returns reshaped DataFrame.
		
		Raises
		------
		ValueError:
		    When there are any `index`, `columns` combinations with multiple
		    values. `DataFrame.pivot_table` when you need to aggregate.
		
		See Also
		--------
		DataFrame.pivot_table : Generalization of pivot that can handle
		    duplicate values for one index/column pair.
		DataFrame.unstack : Pivot based on the index values instead of a
		    column.
		
		Notes
		-----
		For finer-tuned control, see hierarchical indexing documentation along
		with the related stack/unstack methods.
		
		Examples
		--------
		>>> df = pd.DataFrame({'foo': ['one', 'one', 'one', 'two', 'two',
		...                            'two'],
		...                    'bar': ['A', 'B', 'C', 'A', 'B', 'C'],
		...                    'baz': [1, 2, 3, 4, 5, 6],
		...                    'zoo': ['x', 'y', 'z', 'q', 'w', 't']})
		>>> df
		    foo   bar  baz  zoo
		0   one   A    1    x
		1   one   B    2    y
		2   one   C    3    z
		3   two   A    4    q
		4   two   B    5    w
		5   two   C    6    t
		
		>>> df.pivot(index='foo', columns='bar', values='baz')
		bar  A   B   C
		foo
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot(index='foo', columns='bar')['baz']
		bar  A   B   C
		foo
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot(index='foo', columns='bar', values=['baz', 'zoo'])
		      baz       zoo
		bar   A  B  C   A  B  C
		foo
		one   1  2  3   x  y  z
		two   4  5  6   q  w  t
		
		A ValueError is raised if there are any duplicates.
		
		>>> df = pd.DataFrame({"foo": ['one', 'one', 'two', 'two'],
		...                    "bar": ['A', 'A', 'B', 'C'],
		...                    "baz": [1, 2, 3, 4]})
		>>> df
		   foo bar  baz
		0  one   A    1
		1  one   A    2
		2  two   B    3
		3  two   C    4
		
		Notice that the first two rows are the same for our `index`
		and `columns` arguments.
		
		>>> df.pivot(index='foo', columns='bar', values='baz')
		Traceback (most recent call last):
		   ...
		ValueError: Index contains duplicate entries, cannot reshape
	**/
	static public function pivot(data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in
		the pivot table will be stored in MultiIndex objects (hierarchical
		indexes) on the index and columns of the result DataFrame.
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed,
		    it is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed,
		    it is being used as the same manner as column values.
		aggfunc : function, list of functions, dict, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names
		    (inferred from the function objects themselves)
		    If dict is passed, the key is column to aggregate and value
		    is function or list of functions
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		Returns
		-------
		table : DataFrame
		
		See Also
		--------
		DataFrame.pivot : Pivot without aggregation that can handle
		    non-numeric data.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": ["foo", "foo", "foo", "foo", "foo",
		...                          "bar", "bar", "bar", "bar"],
		...                    "B": ["one", "one", "one", "two", "two",
		...                          "one", "one", "two", "two"],
		...                    "C": ["small", "large", "large", "small",
		...                          "small", "large", "small", "small",
		...                          "large"],
		...                    "D": [1, 2, 2, 3, 3, 4, 5, 6, 7],
		...                    "E": [2, 4, 5, 5, 6, 6, 8, 9, 9]})
		>>> df
		     A    B      C  D  E
		0  foo  one  small  1  2
		1  foo  one  large  2  4
		2  foo  one  large  2  5
		3  foo  two  small  3  5
		4  foo  two  small  3  6
		5  bar  one  large  4  6
		6  bar  one  small  5  8
		7  bar  two  small  6  9
		8  bar  two  large  7  9
		
		This first example aggregates values by taking the sum.
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		C        large  small
		A   B
		bar one      4      5
		    two      7      6
		foo one      4      1
		    two    NaN      6
		
		We can also fill missing values using the `fill_value` parameter.
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum, fill_value=0)
		>>> table
		C        large  small
		A   B
		bar one      4      5
		    two      7      6
		foo one      4      1
		    two      0      6
		
		The next example aggregates by taking the mean across multiple columns.
		
		>>> table = pivot_table(df, values=['D', 'E'], index=['A', 'C'],
		...                     aggfunc={'D': np.mean,
		...                              'E': np.mean})
		>>> table
		                  D         E
		               mean      mean
		A   C
		bar large  5.500000  7.500000
		    small  5.500000  8.500000
		foo large  2.000000  4.500000
		    small  2.333333  4.333333
		
		We can also calculate multiple types of aggregations for any given
		value column.
		
		>>> table = pivot_table(df, values=['D', 'E'], index=['A', 'C'],
		...                     aggfunc={'D': np.mean,
		...                              'E': [min, max, np.mean]})
		>>> table
		                  D   E
		               mean max      mean min
		A   C
		bar large  5.500000  9   7.500000   6
		    small  5.500000  9   8.500000   8
		foo large  2.000000  5   4.500000   4
		    small  2.333333  6   4.333333   2
	**/
	static public function pivot_table(data:Dynamic, ?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
}