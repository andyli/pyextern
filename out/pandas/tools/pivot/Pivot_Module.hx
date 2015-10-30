/* This file is generated, do not edit! */
package pandas.tools.pivot;
@:pythonImport("pandas.tools.pivot") extern class Pivot_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_margins(table:Dynamic, data:Dynamic, values:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic):Dynamic;
	static public function _compute_grand_margin(data:Dynamic, values:Dynamic, aggfunc:Dynamic):Dynamic;
	static public function _convert_by(by:Dynamic):Dynamic;
	static public function _generate_marginal_results(table:Dynamic, data:Dynamic, values:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic, grand_margin:Dynamic):Dynamic;
	static public function _generate_marginal_results_without_values(table:Dynamic, data:Dynamic, rows:Dynamic, cols:Dynamic, aggfunc:Dynamic):Dynamic;
	static public function _get_names(arrs:Dynamic, names:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes. Can also add a layer of hierarchical indexing on the
		concatenation axis, which may be useful if the labels are the same (or
		overlapping) on the passed axis number
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0, 1, ...}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the the index values on the other
		    axes are still respected in the join.
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Notes
		-----
		The keys, levels, and names arguments are all optional
		
		Returns
		-------
		concatenated : type of objects
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
		    Array of values to aggregate according to the factors
		aggfunc : function, optional
		    If no values array is passed, computes a frequency table
		rownames : sequence, default None
		    If passed, must match number of row arrays passed
		colnames : sequence, default None
		    If passed, must match number of column arrays passed
		margins : boolean, default False
		    Add row/column margins (subtotals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		
		Notes
		-----
		Any Series passed will have their name attributes used unless row or column
		names for the cross-tabulation are specified
		
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
		
		Returns
		-------
		crosstab : DataFrame
	**/
	static public function crosstab(index:Dynamic, columns:Dynamic, ?values:Dynamic, ?rownames:Dynamic, ?colnames:Dynamic, ?aggfunc:Dynamic, ?margins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in the
		pivot table will be stored in MultiIndex objects (hierarchical indexes) on
		the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : a column, Grouper, array which has the same length as data, or list of them.
		    Keys to group by on the pivot table index.
		    If an array is passed, it is being used as the same manner as column values.
		columns : a column, Grouper, array which has the same length as data, or list of them.
		    Keys to group by on the pivot table column.
		    If an array is passed, it is being used as the same manner as column values.
		aggfunc : function, default numpy.mean, or list of functions
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names (inferred
		    from the function objects themselves)
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		
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
	**/
	static public function pivot_table(data:Dynamic, ?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic):Dynamic;
}