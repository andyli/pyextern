/* This file is generated, do not edit! */
package pandas.core.reshape;
@:pythonImport("pandas.core.reshape") extern class Reshape_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function _compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_dummies_1d(data:Dynamic, prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic):Dynamic;
	static public function _get_na_value(dtype:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Produce 'pivot' table based on 3 columns of this DataFrame.
		Uses unique values from index / columns and fills with values.
		
		Parameters
		----------
		index : string or object
		    Column name to use to make new frame's index
		columns : string or object
		    Column name to use to make new frame's columns
		values : string or object
		    Column name to use for populating new frame's values
		
		Could benefit from some Cython here.
	**/
	static public function _slow_pivot(index:Dynamic, columns:Dynamic, values:Dynamic):Dynamic;
	static public function _stack_multi_columns(frame:Dynamic, ?level_num:Dynamic, ?dropna:Dynamic):Dynamic;
	static public function _unstack_frame(obj:Dynamic, level:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _unstack_multiple(data:Dynamic, clocs:Dynamic):Dynamic;
	static public function get_compressed_ids(labels:Dynamic, sizes:Dynamic):Dynamic;
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
		drop_first : bool, default False
		    Whether to get k-1 dummies out of n categorical levels by removing the
		    first level.
		
		    .. versionadded:: 0.18.0
		Returns
		-------
		dummies : DataFrame or SparseDataFrame
		
		Examples
		--------
		>>> import pandas as pd
		>>> s = pd.Series(list('abca'))
		
		>>> pd.get_dummies(s)
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		
		>>> s1 = ['a', 'b', np.nan]
		
		>>> pd.get_dummies(s1)
		   a  b
		0  1  0
		1  0  1
		2  0  0
		
		>>> pd.get_dummies(s1, dummy_na=True)
		   a  b  NaN
		0  1  0    0
		1  0  1    0
		2  0  0    1
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
		                    'C': [1, 2, 3]})
		
		>>> pd.get_dummies(df, prefix=['col1', 'col2'])
		   C  col1_a  col1_b  col2_a  col2_b  col2_c
		0  1       1       0       0       1       0
		1  2       0       1       1       0       0
		2  3       1       0       0       0       1
		
		>>> pd.get_dummies(pd.Series(list('abcaa')))
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		4  1  0  0
		
		>>> pd.get_dummies(pd.Series(list('abcaa')), drop_first=True))
		   b  c
		0  0  0
		1  1  0
		2  0  1
		3  0  0
		4  0  0
		
		See Also
		--------
		Series.str.get_dummies
	**/
	static public function get_dummies(data:Dynamic, ?prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?columns:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic):Dynamic;
	/**
		For the particular label_list, gets the offsets into the hypothetical list
		representing the totally ordered cartesian product of all possible label
		combinations, *as long as* this space fits within int64 bounds;
		otherwise, though group indices identify unique combinations of
		labels, they cannot be deconstructed.
		- If `sort`, rank of returned ids preserve lexical ranks of labels.
		  i.e. returned id's can be used to do lexical sort on labels;
		- If `xnull` nulls (-1 labels) are passed through.
		
		Parameters
		----------
		labels: sequence of arrays
		    Integers identifying levels at each location
		shape: sequence of ints same length as labels
		    Number of unique levels at each location
		sort: boolean
		    If the ranks of returned ids should match lexical ranks of labels
		xnull: boolean
		    If true nulls are excluded. i.e. -1 values in the labels are
		    passed through
		Returns
		-------
		An array of type int64 where two elements are equal if their corresponding
		labels are equal at all location.
	**/
	static public function get_group_index(labels:Dynamic, shape:Dynamic, sort:Dynamic, xnull:Dynamic):Dynamic;
	/**
		Reshape long-format data to wide. Generalized inverse of DataFrame.pivot
		
		Parameters
		----------
		data : DataFrame
		groups : dict
		    {new_name : list_of_columns}
		dropna : boolean, default True
		
		Examples
		--------
		>>> import pandas as pd
		>>> data = pd.DataFrame({'hr1': [514, 573], 'hr2': [545, 526],
		...                      'team': ['Red Sox', 'Yankees'],
		...                      'year1': [2007, 2008], 'year2': [2008, 2008]})
		>>> data
		   hr1  hr2     team  year1  year2
		0  514  545  Red Sox   2007   2008
		1  573  526  Yankees   2007   2008
		
		>>> pd.lreshape(data, {'year': ['year1', 'year2'], 'hr': ['hr1', 'hr2']})
		      team   hr  year
		0  Red Sox  514  2007
		1  Yankees  573  2007
		2  Red Sox  545  2008
		3  Yankees  526  2008
		
		Returns
		-------
		reshaped : DataFrame
	**/
	static public function lreshape(data:Dynamic, groups:Dynamic, ?dropna:Dynamic, ?label:Dynamic):pandas.DataFrame;
	/**
		Construct 1-0 dummy variables corresponding to designated axis
		labels
		
		Parameters
		----------
		frame : DataFrame
		axis : {'major', 'minor'}, default 'minor'
		transform : function, default None
		    Function to apply to axis labels first. For example, to
		    get "day of week" dummies in a time series regression
		    you might call::
		
		        make_axis_dummies(panel, axis='major',
		                          transform=lambda d: d.weekday())
		Returns
		-------
		dummies : DataFrame
		    Column names taken from chosen axis
	**/
	static public function make_axis_dummies(frame:Dynamic, ?axis:Dynamic, ?transform:Dynamic):pandas.DataFrame;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally leaving
		identifier variables set.
		
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
		See DataFrame.pivot
	**/
	static public function pivot(self:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Produce 'pivot' table based on 3 columns of this DataFrame.
		Uses unique values from index / columns and fills with values.
		
		Parameters
		----------
		index : ndarray
		    Labels to use to make new frame's index
		columns : ndarray
		    Labels to use to make new frame's columns
		values : ndarray
		    Values to use for populating new frame's values
		
		Notes
		-----
		Obviously, all 3 of the input arguments must have the same length
		
		Returns
		-------
		DataFrame
	**/
	static public function pivot_simple(index:Dynamic, columns:Dynamic, values:Dynamic):Dynamic;
	/**
		Convert DataFrame to Series with multi-level Index. Columns become the
		second level of the resulting hierarchical index
		
		Returns
		-------
		stacked : Series
	**/
	static public function stack(frame:Dynamic, ?level:Dynamic, ?dropna:Dynamic):pandas.Series;
	static public function stack_multiple(frame:Dynamic, level:Dynamic, ?dropna:Dynamic):Dynamic;
	static public function unstack(obj:Dynamic, level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Wide panel to long format. Less flexible but more user-friendly than melt.
		
		Parameters
		----------
		df : DataFrame
		    The wide-format DataFrame
		stubnames : list
		    A list of stub names. The wide format variables are assumed to
		    start with the stub names.
		i : str
		    The name of the id variable.
		j : str
		    The name of the subobservation variable.
		stubend : str
		    Regex to match for the end of the stubs.
		
		Returns
		-------
		DataFrame
		    A DataFrame that contains each stub name as a variable as well as
		    variables for i and j.
		
		Examples
		--------
		>>> import pandas as pd
		>>> import numpy as np
		>>> np.random.seed(123)
		>>> df = pd.DataFrame({"A1970" : {0 : "a", 1 : "b", 2 : "c"},
		...                    "A1980" : {0 : "d", 1 : "e", 2 : "f"},
		...                    "B1970" : {0 : 2.5, 1 : 1.2, 2 : .7},
		...                    "B1980" : {0 : 3.2, 1 : 1.3, 2 : .1},
		...                    "X"     : dict(zip(range(3), np.random.randn(3)))
		...                   })
		>>> df["id"] = df.index
		>>> df
		A1970 A1980  B1970  B1980         X  id
		0     a     d    2.5    3.2 -1.085631   0
		1     b     e    1.2    1.3  0.997345   1
		2     c     f    0.7    0.1  0.282978   2
		>>> wide_to_long(df, ["A", "B"], i="id", j="year")
		                X  A    B
		id year
		0  1970 -1.085631  a  2.5
		1  1970  0.997345  b  1.2
		2  1970  0.282978  c  0.7
		0  1980 -1.085631  d  3.2
		1  1980  0.997345  e  1.3
		2  1980  0.282978  f  0.1
		
		Notes
		-----
		All extra variables are treated as extra id variables. This simply uses
		`pandas.melt` under the hood, but is hard-coded to "do the right thing"
		in a typicaly case.
	**/
	static public function wide_to_long(df:Dynamic, stubnames:Dynamic, i:Dynamic, j:Dynamic):Dynamic;
}