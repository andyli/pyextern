/* This file is generated, do not edit! */
package pandas.core.reshape.melt;
@:pythonImport("pandas.core.reshape.melt") extern class Melt_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _shared_docs : Dynamic;
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
		Check whether an array-like is of a pandas extension class instance.
		
		Extension classes include categoricals, pandas sparse objects (i.e.
		classes represented within the pandas library and not ones external
		to it like scipy sparse matrices), and datetime-like arrays.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a pandas
		          extension class instance.
		
		Examples
		--------
		>>> is_extension_type([1, 2, 3])
		False
		>>> is_extension_type(np.array([1, 2, 3]))
		False
		>>>
		>>> cat = pd.Categorical([1, 2, 3])
		>>>
		>>> is_extension_type(cat)
		True
		>>> is_extension_type(pd.Series(cat))
		True
		>>> is_extension_type(pd.SparseArray([1, 2, 3]))
		True
		>>> is_extension_type(pd.SparseSeries([1, 2, 3]))
		True
		>>>
		>>> from scipy.sparse import bsr_matrix
		>>> is_extension_type(bsr_matrix([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_extension_type(s)
		True
	**/
	static public function is_extension_type(arr:Dynamic):Dynamic;
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
		Reshape long-format data to wide. Generalized inverse of DataFrame.pivot
		
		Parameters
		----------
		data : DataFrame
		groups : dict
		    {new_name : list_of_columns}
		dropna : boolean, default True
		
		Examples
		--------
		>>> data = pd.DataFrame({'hr1': [514, 573], 'hr2': [545, 526],
		...                      'team': ['Red Sox', 'Yankees'],
		...                      'year1': [2007, 2007], 'year2': [2008, 2008]})
		>>> data
		   hr1  hr2     team  year1  year2
		0  514  545  Red Sox   2007   2008
		1  573  526  Yankees   2007   2008
		
		>>> pd.lreshape(data, {'year': ['year1', 'year2'], 'hr': ['hr1', 'hr2']})
		      team  year   hr
		0  Red Sox  2007  514
		1  Yankees  2007  573
		2  Red Sox  2008  545
		3  Yankees  2008  526
		
		Returns
		-------
		reshaped : DataFrame
	**/
	static public function lreshape(data:Dynamic, groups:Dynamic, ?dropna:Dynamic, ?label:Dynamic):pandas.DataFrame;
	/**
		Unpivots a DataFrame from wide format to long format, optionally
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
		
		See Also
		--------
		DataFrame.melt
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
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
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Convert argument to a numeric type.
		
		The default return dtype is `float64` or `int64`
		depending on the data supplied. Use the `downcast` parameter
		to obtain other dtypes.
		
		Parameters
		----------
		arg : list, tuple, 1-d array, or Series
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaN
		    - If 'ignore', then invalid parsing will return the input
		downcast : {'integer', 'signed', 'unsigned', 'float'} , default None
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		ret : numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray
		
		See Also
		--------
		pandas.DataFrame.astype : Cast argument to a specified dtype.
		pandas.to_datetime : Convert argument to datetime.
		pandas.to_timedelta : Convert argument to timedelta.
		numpy.ndarray.astype : Cast a numpy array to a specified type.
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Wide panel to long format. Less flexible but more user-friendly than melt.
		
		With stubnames ['A', 'B'], this function expects to find one or more
		group of columns with format
		A-suffix1, A-suffix2,..., B-suffix1, B-suffix2,...
		You specify what you want to call this suffix in the resulting long format
		with `j` (for example `j='year'`)
		
		Each row of these wide variables are assumed to be uniquely identified by
		`i` (can be a single column name or a list of column names)
		
		All remaining variables in the data frame are left intact.
		
		Parameters
		----------
		df : DataFrame
		    The wide-format DataFrame
		stubnames : str or list-like
		    The stub name(s). The wide format variables are assumed to
		    start with the stub names.
		i : str or list-like
		    Column(s) to use as id variable(s)
		j : str
		    The name of the sub-observation variable. What you wish to name your
		    suffix in the long format.
		sep : str, default ""
		    A character indicating the separation of the variable names
		    in the wide format, to be stripped from the names in the long format.
		    For example, if your column names are A-suffix1, A-suffix2, you
		    can strip the hyphen by specifying `sep='-'`
		
		    .. versionadded:: 0.20.0
		
		suffix : str, default '\\d+'
		    A regular expression capturing the wanted suffixes. '\\d+' captures
		    numeric suffixes. Suffixes with no numbers could be specified with the
		    negated character class '\\D+'. You can also further disambiguate
		    suffixes, for example, if your wide variables are of the form
		    A-one, B-two,.., and you have an unrelated column A-rating, you can
		    ignore the last one by specifying `suffix='(!?one|two)'`
		
		    .. versionadded:: 0.20.0
		
		    .. versionchanged:: 0.23.0
		        When all suffixes are numeric, they are cast to int64/float64.
		
		Returns
		-------
		DataFrame
		    A DataFrame that contains each stub name as a variable, with new index
		    (i, j)
		
		Notes
		-----
		All extra variables are left untouched. This simply uses
		`pandas.melt` under the hood, but is hard-coded to "do the right thing"
		in a typical case.
		
		Examples
		--------
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
		>>> pd.wide_to_long(df, ["A", "B"], i="id", j="year")
		... # doctest: +NORMALIZE_WHITESPACE
		                X  A    B
		id year
		0  1970 -1.085631  a  2.5
		1  1970  0.997345  b  1.2
		2  1970  0.282978  c  0.7
		0  1980 -1.085631  d  3.2
		1  1980  0.997345  e  1.3
		2  1980  0.282978  f  0.1
		
		With multiple id columns
		
		>>> df = pd.DataFrame({
		...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
		...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
		...     'ht1': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
		...     'ht2': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
		... })
		>>> df
		   birth  famid  ht1  ht2
		0      1      1  2.8  3.4
		1      2      1  2.9  3.8
		2      3      1  2.2  2.9
		3      1      2  2.0  3.2
		4      2      2  1.8  2.8
		5      3      2  1.9  2.4
		6      1      3  2.2  3.3
		7      2      3  2.3  3.4
		8      3      3  2.1  2.9
		>>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age')
		>>> l
		... # doctest: +NORMALIZE_WHITESPACE
		                  ht
		famid birth age
		1     1     1    2.8
		            2    3.4
		      2     1    2.9
		            2    3.8
		      3     1    2.2
		            2    2.9
		2     1     1    2.0
		            2    3.2
		      2     1    1.8
		            2    2.8
		      3     1    1.9
		            2    2.4
		3     1     1    2.2
		            2    3.3
		      2     1    2.3
		            2    3.4
		      3     1    2.1
		            2    2.9
		
		Going from long back to wide just takes some creative use of `unstack`
		
		>>> w = l.unstack()
		>>> w.columns = w.columns.map('{0[0]}{0[1]}'.format)
		>>> w.reset_index()
		   famid  birth  ht1  ht2
		0      1      1  2.8  3.4
		1      1      2  2.9  3.8
		2      1      3  2.2  2.9
		3      2      1  2.0  3.2
		4      2      2  1.8  2.8
		5      2      3  1.9  2.4
		6      3      1  2.2  3.3
		7      3      2  2.3  3.4
		8      3      3  2.1  2.9
		
		Less wieldy column names are also handled
		
		>>> np.random.seed(0)
		>>> df = pd.DataFrame({'A(quarterly)-2010': np.random.rand(3),
		...                    'A(quarterly)-2011': np.random.rand(3),
		...                    'B(quarterly)-2010': np.random.rand(3),
		...                    'B(quarterly)-2011': np.random.rand(3),
		...                    'X' : np.random.randint(3, size=3)})
		>>> df['id'] = df.index
		>>> df # doctest: +NORMALIZE_WHITESPACE, +ELLIPSIS
		   A(quarterly)-2010  A(quarterly)-2011  B(quarterly)-2010  ...
		0           0.548814           0.544883           0.437587  ...
		1           0.715189           0.423655           0.891773  ...
		2           0.602763           0.645894           0.963663  ...
		   X  id
		0  0   0
		1  1   1
		2  1   2
		
		>>> pd.wide_to_long(df, ['A(quarterly)', 'B(quarterly)'], i='id',
		...                 j='year', sep='-')
		... # doctest: +NORMALIZE_WHITESPACE
		         X  A(quarterly)  B(quarterly)
		id year
		0  2010  0      0.548814     0.437587
		1  2010  1      0.715189     0.891773
		2  2010  1      0.602763     0.963663
		0  2011  0      0.544883     0.383442
		1  2011  1      0.423655     0.791725
		2  2011  1      0.645894     0.528895
		
		If we have many columns, we could also use a regex to find our
		stubnames and pass that list on to wide_to_long
		
		>>> stubnames = sorted(
		...     set([match[0] for match in df.columns.str.findall(
		...         r'[A-B]\(.*\)').values if match != [] ])
		... )
		>>> list(stubnames)
		['A(quarterly)', 'B(quarterly)']
		
		All of the above examples have integers as suffixes. It is possible to
		have non-integers as suffixes.
		
		>>> df = pd.DataFrame({
		...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
		...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
		...     'ht_one': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
		...     'ht_two': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
		... })
		>>> df
		   birth  famid  ht_one  ht_two
		0      1      1     2.8     3.4
		1      2      1     2.9     3.8
		2      3      1     2.2     2.9
		3      1      2     2.0     3.2
		4      2      2     1.8     2.8
		5      3      2     1.9     2.4
		6      1      3     2.2     3.3
		7      2      3     2.3     3.4
		8      3      3     2.1     2.9
		
		>>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age',
		                        sep='_', suffix='\w')
		>>> l
		... # doctest: +NORMALIZE_WHITESPACE
		                  ht
		famid birth age
		1     1     one  2.8
		            two  3.4
		      2     one  2.9
		            two  3.8
		      3     one  2.2
		            two  2.9
		2     1     one  2.0
		            two  3.2
		      2     one  1.8
		            two  2.8
		      3     one  1.9
		            two  2.4
		3     1     one  2.2
		            two  3.3
		      2     one  2.3
		            two  3.4
		      3     one  2.1
		            two  2.9
	**/
	static public function wide_to_long(df:Dynamic, stubnames:Dynamic, i:Dynamic, j:Dynamic, ?sep:Dynamic, ?suffix:Dynamic):Dynamic;
}