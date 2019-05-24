/* This file is generated, do not edit! */
package pandas.core.strings;
@:pythonImport("pandas.core.strings") extern class Strings_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cpython_optimized_decoders : Dynamic;
	static public var _cpython_optimized_encoders : Dynamic;
	static public function _get_single_group_name(rx:Dynamic):Dynamic;
	/**
		Used in both extract_noexpand and extract_frame
	**/
	static public function _groups_or_na_fun(regex:Dynamic):Dynamic;
	static public function _map(f:Dynamic, arr:Dynamic, ?na_mask:Dynamic, ?na_value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _na_map(f:Dynamic, arr:Dynamic, ?na_result:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _noarg_wrapper(f:Dynamic, ?docstring:Dynamic, ?kargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _pat_wrapper(f:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _shared_docs : Dynamic;
	/**
		For each subject string in the Series, extract groups from the
		first match of regular expression pat. This function is called from
		str_extract(expand=True), and always returns a DataFrame.
	**/
	static public function _str_extract_frame(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Find groups in each string in the Series using passed regular
		expression. This function is called from
		str_extract(expand=False), and can return Series, DataFrame, or
		Index.
	**/
	static public function _str_extract_noexpand(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Auxiliary function for :meth:`str.cat`
		
		Parameters
		----------
		list_of_columns : list of numpy arrays
		    List of arrays to be concatenated with sep;
		    these arrays may not contain NaNs!
		sep : string
		    The separator string for concatenating the columns
		
		Returns
		-------
		nd.array
		    The concatenation of list_of_columns with sep
	**/
	static public function cat_core(list_of_columns:Dynamic, sep:Dynamic):Dynamic;
	/**
		Copy a docstring from another source function (if present)
	**/
	static public function copy(source:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function.
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str or None
		    Name of preferred argument in function. Use None to raise warning that
		    ``old_arg_name`` keyword is deprecated.
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
		
		To raise a warning that a keyword will be removed entirely in the future
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name=None)
		... def f(cols='', another_param=''):
		...     print(cols)
		...
		>>> f(cols='should raise warning')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
		>>> f(another_param='should not raise warning')
		should not raise warning
		
		>>> f(cols='should raise warning', another_param='')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_regex : bool
		    Whether `obj` is a regex pattern.
		
		Examples
		--------
		>>> is_re(re.compile(".*"))
		True
		>>> is_re("foo")
		False
	**/
	static public function is_re(obj:Dynamic):Bool;
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
	/**
		Check if the object is a string.
		
		Parameters
		----------
		obj : The object to check
		
		Examples
		--------
		>>> is_string_like("foo")
		True
		>>> is_string_like(1)
		False
		
		Returns
		-------
		is_str_like : bool
		    Whether `obj` is a string or not.
	**/
	static public function is_string_like(obj:Dynamic):Bool;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Test if pattern or regex is contained within a string of a Series or Index.
		
		Return boolean Series or Index based on whether a given pattern or regex is
		contained within a string of a Series or Index.
		
		Parameters
		----------
		pat : str
		    Character sequence or regular expression.
		case : bool, default True
		    If True, case sensitive.
		flags : int, default 0 (no flags)
		    Flags to pass through to the re module, e.g. re.IGNORECASE.
		na : default NaN
		    Fill value for missing values.
		regex : bool, default True
		    If True, assumes the pat is a regular expression.
		
		    If False, treats the pat as a literal string.
		
		Returns
		-------
		Series or Index of boolean values
		    A Series or Index of boolean values indicating whether the
		    given pattern is contained within the string of each element
		    of the Series or Index.
		
		See Also
		--------
		match : Analogous, but stricter, relying on re.match instead of re.search.
		Series.str.startswith : Test if the start of each string element matches a
		    pattern.
		Series.str.endswith : Same as startswith, but tests the end of string.
		
		Examples
		--------
		
		Returning a Series of booleans using only a literal pattern.
		
		>>> s1 = pd.Series(['Mouse', 'dog', 'house and parrot', '23', np.NaN])
		>>> s1.str.contains('og', regex=False)
		0    False
		1     True
		2    False
		3    False
		4      NaN
		dtype: object
		
		Returning an Index of booleans using only a literal pattern.
		
		>>> ind = pd.Index(['Mouse', 'dog', 'house and parrot', '23.0', np.NaN])
		>>> ind.str.contains('23', regex=False)
		Index([False, False, False, True, nan], dtype='object')
		
		Specifying case sensitivity using `case`.
		
		>>> s1.str.contains('oG', case=True, regex=True)
		0    False
		1    False
		2    False
		3    False
		4      NaN
		dtype: object
		
		Specifying `na` to be `False` instead of `NaN` replaces NaN values
		with `False`. If Series or Index does not contain NaN values
		the resultant dtype will be `bool`, otherwise, an `object` dtype.
		
		>>> s1.str.contains('og', na=False, regex=True)
		0    False
		1     True
		2    False
		3    False
		4    False
		dtype: bool
		
		Returning 'house' or 'dog' when either expression occurs in a string.
		
		>>> s1.str.contains('house|dog', regex=True)
		0    False
		1     True
		2     True
		3    False
		4      NaN
		dtype: object
		
		Ignoring case sensitivity using `flags` with regex.
		
		>>> import re
		>>> s1.str.contains('PARROT', flags=re.IGNORECASE, regex=True)
		0    False
		1    False
		2     True
		3    False
		4      NaN
		dtype: object
		
		Returning any digit using regular expression.
		
		>>> s1.str.contains('\d', regex=True)
		0    False
		1    False
		2    False
		3     True
		4      NaN
		dtype: object
		
		Ensure `pat` is a not a literal pattern when `regex` is set to True.
		Note in the following example one might expect only `s2[1]` and `s2[3]` to
		return `True`. However, '.0' as a regex matches any character
		followed by a 0.
		
		>>> s2 = pd.Series(['40','40.0','41','41.0','35'])
		>>> s2.str.contains('.0', regex=True)
		0     True
		1     True
		2    False
		3     True
		4    False
		dtype: bool
	**/
	static public function str_contains(arr:Dynamic, pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Count occurrences of pattern in each string of the Series/Index.
		
		This function is used to count the number of times a particular regex
		pattern is repeated in each of the string elements of the
		:class:`~pandas.Series`.
		
		Parameters
		----------
		pat : str
		    Valid regular expression.
		flags : int, default 0, meaning no flags
		    Flags for the `re` module. For a complete list, `see here
		    <https://docs.python.org/3/howto/regex.html#compilation-flags>`_.
		**kwargs
		    For compatibility with other string methods. Not used.
		
		Returns
		-------
		counts : Series or Index
		    Same type as the calling object containing the integer counts.
		
		See Also
		--------
		re : Standard library module for regular expressions.
		str.count : Standard library version, without regular expression support.
		
		Notes
		-----
		Some characters need to be escaped when passing in `pat`.
		eg. ``'$'`` has a special meaning in regex and must be escaped when
		finding this literal character.
		
		Examples
		--------
		>>> s = pd.Series(['A', 'B', 'Aaba', 'Baca', np.nan, 'CABA', 'cat'])
		>>> s.str.count('a')
		0    0.0
		1    0.0
		2    2.0
		3    2.0
		4    NaN
		5    0.0
		6    1.0
		dtype: float64
		
		Escape ``'$'`` to find the literal dollar sign.
		
		>>> s = pd.Series(['$', 'B', 'Aab$', '$$ca', 'C$B$', 'cat'])
		>>> s.str.count('\$')
		0    1
		1    0
		2    1
		3    2
		4    2
		5    0
		dtype: int64
		
		This is also available on Index
		
		>>> pd.Index(['A', 'A', 'Aaba', 'cat']).str.count('a')
		Int64Index([0, 0, 2, 1], dtype='int64')
	**/
	static public function str_count(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Decode character string in the Series/Index using indicated encoding.
		Equivalent to :meth:`str.decode` in python2 and :meth:`bytes.decode` in
		python3.
		
		Parameters
		----------
		encoding : str
		errors : str, optional
		
		Returns
		-------
		decoded : Series/Index of objects
	**/
	static public function str_decode(arr:Dynamic, encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Encode character string in the Series/Index using indicated encoding.
		Equivalent to :meth:`str.encode`.
		
		Parameters
		----------
		encoding : str
		errors : str, optional
		
		Returns
		-------
		encoded : Series/Index of objects
	**/
	static public function str_encode(arr:Dynamic, encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Test if the end of each string element matches a pattern.
		
		Equivalent to :meth:`str.endswith`.
		
		Parameters
		----------
		pat : str
		    Character sequence. Regular expressions are not accepted.
		na : object, default NaN
		    Object shown if element tested is not a string.
		
		Returns
		-------
		Series or Index of bool
		    A Series of booleans indicating whether the given pattern matches
		    the end of each string element.
		
		See Also
		--------
		str.endswith : Python standard library string method.
		Series.str.startswith : Same as endswith, but tests the start of string.
		Series.str.contains : Tests if string element contains a pattern.
		
		Examples
		--------
		>>> s = pd.Series(['bat', 'bear', 'caT', np.nan])
		>>> s
		0     bat
		1    bear
		2     caT
		3     NaN
		dtype: object
		
		>>> s.str.endswith('t')
		0     True
		1    False
		2    False
		3      NaN
		dtype: object
		
		Specifying `na` to be `False` instead of `NaN`.
		
		>>> s.str.endswith('t', na=False)
		0     True
		1    False
		2    False
		3    False
		dtype: bool
	**/
	static public function str_endswith(arr:Dynamic, pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Extract capture groups in the regex `pat` as columns in a DataFrame.
		
		For each subject string in the Series, extract groups from the
		first match of regular expression `pat`.
		
		Parameters
		----------
		pat : string
		    Regular expression pattern with capturing groups.
		flags : int, default 0 (no flags)
		    Flags from the ``re`` module, e.g. ``re.IGNORECASE``, that
		    modify regular expression matching for things like case,
		    spaces, etc. For more details, see :mod:`re`.
		expand : bool, default True
		    If True, return DataFrame with one column per capture group.
		    If False, return a Series/Index if there is one capture group
		    or DataFrame if there are multiple capture groups.
		
		    .. versionadded:: 0.18.0
		
		Returns
		-------
		DataFrame or Series or Index
		    A DataFrame with one row for each subject string, and one
		    column for each group. Any capture group names in regular
		    expression pat will be used for column names; otherwise
		    capture group numbers will be used. The dtype of each result
		    column is always object, even when no match is found. If
		    ``expand=False`` and pat has only one capture group, then
		    return a Series (if subject is a Series) or Index (if subject
		    is an Index).
		
		See Also
		--------
		extractall : Returns all matches (not just the first match).
		
		Examples
		--------
		A pattern with two groups will return a DataFrame with two columns.
		Non-matches will be NaN.
		
		>>> s = pd.Series(['a1', 'b2', 'c3'])
		>>> s.str.extract(r'([ab])(\d)')
		     0    1
		0    a    1
		1    b    2
		2  NaN  NaN
		
		A pattern may contain optional groups.
		
		>>> s.str.extract(r'([ab])?(\d)')
		     0  1
		0    a  1
		1    b  2
		2  NaN  3
		
		Named groups will become column names in the result.
		
		>>> s.str.extract(r'(?P<letter>[ab])(?P<digit>\d)')
		  letter digit
		0      a     1
		1      b     2
		2    NaN   NaN
		
		A pattern with one group will return a DataFrame with one column
		if expand=True.
		
		>>> s.str.extract(r'[ab](\d)', expand=True)
		     0
		0    1
		1    2
		2  NaN
		
		A pattern with one group will return a Series if expand=False.
		
		>>> s.str.extract(r'[ab](\d)', expand=False)
		0      1
		1      2
		2    NaN
		dtype: object
	**/
	static public function str_extract(arr:Dynamic, pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		For each subject string in the Series, extract groups from all
		matches of regular expression pat. When each subject string in the
		Series has exactly one match, extractall(pat).xs(0, level='match')
		is the same as extract(pat).
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		pat : str
		    Regular expression pattern with capturing groups.
		flags : int, default 0 (no flags)
		    A ``re`` module flag, for example ``re.IGNORECASE``. These allow
		    to modify regular expression matching for things like case, spaces,
		    etc. Multiple flags can be combined with the bitwise OR operator,
		    for example ``re.IGNORECASE | re.MULTILINE``.
		
		Returns
		-------
		DataFrame
		    A ``DataFrame`` with one row for each match, and one column for each
		    group. Its rows have a ``MultiIndex`` with first levels that come from
		    the subject ``Series``. The last level is named 'match' and indexes the
		    matches in each item of the ``Series``. Any capture group names in
		    regular expression pat will be used for column names; otherwise capture
		    group numbers will be used.
		
		See Also
		--------
		extract : Returns first match only (not all matches).
		
		Examples
		--------
		A pattern with one group will return a DataFrame with one column.
		Indices with no matches will not appear in the result.
		
		>>> s = pd.Series(["a1a2", "b1", "c1"], index=["A", "B", "C"])
		>>> s.str.extractall(r"[ab](\d)")
		         0
		  match
		A 0      1
		  1      2
		B 0      1
		
		Capture group names are used for column names of the result.
		
		>>> s.str.extractall(r"[ab](?P<digit>\d)")
		        digit
		  match
		A 0         1
		  1         2
		B 0         1
		
		A pattern with two groups will return a DataFrame with two columns.
		
		>>> s.str.extractall(r"(?P<letter>[ab])(?P<digit>\d)")
		        letter digit
		  match
		A 0          a     1
		  1          a     2
		B 0          b     1
		
		Optional groups that do not match are NaN in the result.
		
		>>> s.str.extractall(r"(?P<letter>[ab])?(?P<digit>\d)")
		        letter digit
		  match
		A 0          a     1
		  1          a     2
		B 0          b     1
		C 0        NaN     1
	**/
	static public function str_extractall(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Return indexes in each strings in the Series/Index where the
		substring is fully contained between [start:end]. Return -1 on failure.
		
		Parameters
		----------
		sub : str
		    Substring being searched
		start : int
		    Left edge index
		end : int
		    Right edge index
		side : {'left', 'right'}, default 'left'
		    Specifies a starting side, equivalent to ``find`` or ``rfind``
		
		Returns
		-------
		found : Series/Index of integer values
	**/
	static public function str_find(arr:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Find all occurrences of pattern or regular expression in the Series/Index.
		
		Equivalent to applying :func:`re.findall` to all the elements in the
		Series/Index.
		
		Parameters
		----------
		pat : string
		    Pattern or regular expression.
		flags : int, default 0
		    ``re`` module flags, e.g. `re.IGNORECASE` (default is 0, which means
		    no flags).
		
		Returns
		-------
		Series/Index of lists of strings
		    All non-overlapping matches of pattern or regular expression in each
		    string of this Series/Index.
		
		See Also
		--------
		count : Count occurrences of pattern or regular expression in each string
		    of the Series/Index.
		extractall : For each string in the Series, extract groups from all matches
		    of regular expression and return a DataFrame with one row for each
		    match and one column for each group.
		re.findall : The equivalent ``re`` function to all non-overlapping matches
		    of pattern or regular expression in string, as a list of strings.
		
		Examples
		--------
		
		>>> s = pd.Series(['Lion', 'Monkey', 'Rabbit'])
		
		The search for the pattern 'Monkey' returns one match:
		
		>>> s.str.findall('Monkey')
		0          []
		1    [Monkey]
		2          []
		dtype: object
		
		On the other hand, the search for the pattern 'MONKEY' doesn't return any
		match:
		
		>>> s.str.findall('MONKEY')
		0    []
		1    []
		2    []
		dtype: object
		
		Flags can be added to the pattern or regular expression. For instance,
		to find the pattern 'MONKEY' ignoring the case:
		
		>>> import re
		>>> s.str.findall('MONKEY', flags=re.IGNORECASE)
		0          []
		1    [Monkey]
		2          []
		dtype: object
		
		When the pattern matches more than one string in the Series, all matches
		are returned:
		
		>>> s.str.findall('on')
		0    [on]
		1    [on]
		2      []
		dtype: object
		
		Regular expressions are supported too. For instance, the search for all the
		strings ending with the word 'on' is shown next:
		
		>>> s.str.findall('on$')
		0    [on]
		1      []
		2      []
		dtype: object
		
		If the pattern is found more than once in the same string, then a list of
		multiple strings is returned:
		
		>>> s.str.findall('b')
		0        []
		1        []
		2    [b, b]
		dtype: object
	**/
	static public function str_findall(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Extract element from each component at specified position.
		
		Extract element from lists, tuples, or strings in each element in the
		Series/Index.
		
		Parameters
		----------
		i : int
		    Position of element to extract.
		
		Returns
		-------
		items : Series/Index of objects
		
		Examples
		--------
		>>> s = pd.Series(["String",
		           (1, 2, 3),
		           ["a", "b", "c"],
		           123, -456,
		           {1:"Hello", "2":"World"}])
		>>> s
		0                        String
		1                     (1, 2, 3)
		2                     [a, b, c]
		3                           123
		4                          -456
		5    {1: 'Hello', '2': 'World'}
		dtype: object
		
		>>> s.str.get(1)
		0        t
		1        2
		2        b
		3      NaN
		4      NaN
		5    Hello
		dtype: object
		
		>>> s.str.get(-1)
		0      g
		1      3
		2      c
		3    NaN
		4    NaN
		5    NaN
		dtype: object
	**/
	static public function str_get(arr:Dynamic, i:Dynamic):Dynamic;
	/**
		Split each string in the Series by sep and return a frame of
		dummy/indicator variables.
		
		Parameters
		----------
		sep : string, default "|"
		    String to split on.
		
		Returns
		-------
		dummies : DataFrame
		
		See Also
		--------
		get_dummies
		
		Examples
		--------
		>>> pd.Series(['a|b', 'a', 'a|c']).str.get_dummies()
		   a  b  c
		0  1  1  0
		1  1  0  0
		2  1  0  1
		
		>>> pd.Series(['a|b', np.nan, 'a|c']).str.get_dummies()
		   a  b  c
		0  1  1  0
		1  0  0  0
		2  1  0  1
	**/
	static public function str_get_dummies(arr:Dynamic, ?sep:Dynamic):pandas.DataFrame;
	static public function str_index(arr:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Join lists contained as elements in the Series/Index with passed delimiter.
		
		If the elements of a Series are lists themselves, join the content of these
		lists using the delimiter passed to the function.
		This function is an equivalent to :meth:`str.join`.
		
		Parameters
		----------
		sep : str
		    Delimiter to use between list entries.
		
		Returns
		-------
		Series/Index: object
		    The list entries concatenated by intervening occurrences of the
		    delimiter.
		
		Raises
		-------
		AttributeError
		    If the supplied Series contains neither strings nor lists.
		
		See Also
		--------
		str.join : Standard library version of this method.
		Series.str.split : Split strings around given separator/delimiter.
		
		Notes
		-----
		If any of the list items is not a string object, the result of the join
		will be `NaN`.
		
		Examples
		--------
		Example with a list that contains non-string elements.
		
		>>> s = pd.Series([['lion', 'elephant', 'zebra'],
		...                [1.1, 2.2, 3.3],
		...                ['cat', np.nan, 'dog'],
		...                ['cow', 4.5, 'goat'],
		...                ['duck', ['swan', 'fish'], 'guppy']])
		>>> s
		0        [lion, elephant, zebra]
		1                [1.1, 2.2, 3.3]
		2                [cat, nan, dog]
		3               [cow, 4.5, goat]
		4    [duck, [swan, fish], guppy]
		dtype: object
		
		Join all lists using a '-'. The lists containing object(s) of types other
		than str will produce a NaN.
		
		>>> s.str.join('-')
		0    lion-elephant-zebra
		1                    NaN
		2                    NaN
		3                    NaN
		4                    NaN
		dtype: object
	**/
	static public function str_join(arr:Dynamic, sep:Dynamic):Dynamic;
	/**
		Determine if each string matches a regular expression.
		
		Parameters
		----------
		pat : string
		    Character sequence or regular expression
		case : boolean, default True
		    If True, case sensitive
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		na : default NaN, fill value for missing values
		
		Returns
		-------
		Series/array of boolean values
		
		See Also
		--------
		contains : Analogous, but less strict, relying on re.search instead of
		    re.match.
		extract : Extract matched groups.
	**/
	static public function str_match(arr:Dynamic, pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Pad strings in the Series/Index up to width.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with character defined in `fillchar`.
		side : {'left', 'right', 'both'}, default 'left'
		    Side from which to fill resulting string.
		fillchar : str, default ' '
		    Additional character for filling, default is whitespace.
		
		Returns
		-------
		Series or Index of object
		    Returns Series or Index with minimum number of char in object.
		
		See Also
		--------
		Series.str.rjust : Fills the left side of strings with an arbitrary
		    character. Equivalent to ``Series.str.pad(side='left')``.
		Series.str.ljust : Fills the right side of strings with an arbitrary
		    character. Equivalent to ``Series.str.pad(side='right')``.
		Series.str.center : Fills boths sides of strings with an arbitrary
		    character. Equivalent to ``Series.str.pad(side='both')``.
		Series.str.zfill :  Pad strings in the Series/Index by prepending '0'
		    character. Equivalent to ``Series.str.pad(side='left', fillchar='0')``.
		
		Examples
		--------
		>>> s = pd.Series(["caribou", "tiger"])
		>>> s
		0    caribou
		1      tiger
		dtype: object
		
		>>> s.str.pad(width=10)
		0       caribou
		1         tiger
		dtype: object
		
		>>> s.str.pad(width=10, side='right', fillchar='-')
		0    caribou---
		1    tiger-----
		dtype: object
		
		>>> s.str.pad(width=10, side='both', fillchar='-')
		0    -caribou--
		1    --tiger---
		dtype: object
	**/
	static public function str_pad(arr:Dynamic, width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Duplicate each string in the Series or Index.
		
		Parameters
		----------
		repeats : int or sequence of int
		    Same value for all (int) or different value per (sequence).
		
		Returns
		-------
		Series or Index of object
		    Series or Index of repeated string objects specified by
		    input parameter repeats.
		
		Examples
		--------
		>>> s = pd.Series(['a', 'b', 'c'])
		>>> s
		0    a
		1    b
		2    c
		
		Single int repeats string in Series
		
		>>> s.str.repeat(repeats=2)
		0    aa
		1    bb
		2    cc
		
		Sequence of int repeats corresponding string in Series
		
		>>> s.str.repeat(repeats=[1, 2, 3])
		0      a
		1     bb
		2    ccc
	**/
	static public function str_repeat(arr:Dynamic, repeats:Dynamic):Dynamic;
	/**
		Replace occurrences of pattern/regex in the Series/Index with
		some other string. Equivalent to :meth:`str.replace` or
		:func:`re.sub`.
		
		Parameters
		----------
		pat : string or compiled regex
		    String can be a character sequence or regular expression.
		
		    .. versionadded:: 0.20.0
		        `pat` also accepts a compiled regex.
		
		repl : string or callable
		    Replacement string or a callable. The callable is passed the regex
		    match object and must return a replacement string to be used.
		    See :func:`re.sub`.
		
		    .. versionadded:: 0.20.0
		        `repl` also accepts a callable.
		
		n : int, default -1 (all)
		    Number of replacements to make from start
		case : boolean, default None
		    - If True, case sensitive (the default if `pat` is a string)
		    - Set to False for case insensitive
		    - Cannot be set if `pat` is a compiled regex
		flags : int, default 0 (no flags)
		    - re module flags, e.g. re.IGNORECASE
		    - Cannot be set if `pat` is a compiled regex
		regex : boolean, default True
		    - If True, assumes the passed-in pattern is a regular expression.
		    - If False, treats the pattern as a literal string
		    - Cannot be set to False if `pat` is a compiled regex or `repl` is
		      a callable.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		Series or Index of object
		    A copy of the object with all matching occurrences of `pat` replaced by
		    `repl`.
		
		Raises
		------
		ValueError
		    * if `regex` is False and `repl` is a callable or `pat` is a compiled
		      regex
		    * if `pat` is a compiled regex and `case` or `flags` is set
		
		Notes
		-----
		When `pat` is a compiled regex, all flags should be included in the
		compiled regex. Use of `case`, `flags`, or `regex=False` with a compiled
		regex will raise an error.
		
		Examples
		--------
		When `pat` is a string and `regex` is True (the default), the given `pat`
		is compiled as a regex. When `repl` is a string, it replaces matching
		regex patterns as with :meth:`re.sub`. NaN value(s) in the Series are
		left as is:
		
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace('f.', 'ba', regex=True)
		0    bao
		1    baz
		2    NaN
		dtype: object
		
		When `pat` is a string and `regex` is False, every `pat` is replaced with
		`repl` as with :meth:`str.replace`:
		
		>>> pd.Series(['f.o', 'fuz', np.nan]).str.replace('f.', 'ba', regex=False)
		0    bao
		1    fuz
		2    NaN
		dtype: object
		
		When `repl` is a callable, it is called on every `pat` using
		:func:`re.sub`. The callable should expect one positional argument
		(a regex object) and return a string.
		
		To get the idea:
		
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace('f', repr)
		0    <_sre.SRE_Match object; span=(0, 1), match='f'>oo
		1    <_sre.SRE_Match object; span=(0, 1), match='f'>uz
		2                                                  NaN
		dtype: object
		
		Reverse every lowercase alphabetic word:
		
		>>> repl = lambda m: m.group(0)[::-1]
		>>> pd.Series(['foo 123', 'bar baz', np.nan]).str.replace(r'[a-z]+', repl)
		0    oof 123
		1    rab zab
		2        NaN
		dtype: object
		
		Using regex groups (extract second group and swap case):
		
		>>> pat = r"(?P<one>\w+) (?P<two>\w+) (?P<three>\w+)"
		>>> repl = lambda m: m.group('two').swapcase()
		>>> pd.Series(['One Two Three', 'Foo Bar Baz']).str.replace(pat, repl)
		0    tWO
		1    bAR
		dtype: object
		
		Using a compiled regex with flags
		
		>>> regex_pat = re.compile(r'FUZ', flags=re.IGNORECASE)
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace(regex_pat, 'bar')
		0    foo
		1    bar
		2    NaN
		dtype: object
	**/
	static public function str_replace(arr:Dynamic, pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?regex:Dynamic):Dynamic;
	static public function str_rsplit(arr:Dynamic, ?pat:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Slice substrings from each element in the Series or Index.
		
		Parameters
		----------
		start : int, optional
		    Start position for slice operation.
		stop : int, optional
		    Stop position for slice operation.
		step : int, optional
		    Step size for slice operation.
		
		Returns
		-------
		Series or Index of object
		    Series or Index from sliced substring from original string object.
		
		See Also
		--------
		Series.str.slice_replace : Replace a slice with a string.
		Series.str.get : Return element at position.
		    Equivalent to `Series.str.slice(start=i, stop=i+1)` with `i`
		    being the position.
		
		Examples
		--------
		>>> s = pd.Series(["koala", "fox", "chameleon"])
		>>> s
		0        koala
		1          fox
		2    chameleon
		dtype: object
		
		>>> s.str.slice(start=1)
		0        oala
		1          ox
		2    hameleon
		dtype: object
		
		>>> s.str.slice(stop=2)
		0    ko
		1    fo
		2    ch
		dtype: object
		
		>>> s.str.slice(step=2)
		0      kaa
		1       fx
		2    caeen
		dtype: object
		
		>>> s.str.slice(start=0, stop=5, step=3)
		0    kl
		1     f
		2    cm
		dtype: object
		
		Equivalent behaviour to:
		
		>>> s.str[0:5:3]
		0    kl
		1     f
		2    cm
		dtype: object
	**/
	static public function str_slice(arr:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Replace a positional slice of a string with another value.
		
		Parameters
		----------
		start : int, optional
		    Left index position to use for the slice. If not specified (None),
		    the slice is unbounded on the left, i.e. slice from the start
		    of the string.
		stop : int, optional
		    Right index position to use for the slice. If not specified (None),
		    the slice is unbounded on the right, i.e. slice until the
		    end of the string.
		repl : str, optional
		    String for replacement. If not specified (None), the sliced region
		    is replaced with an empty string.
		
		Returns
		-------
		replaced : Series or Index
		    Same type as the original object.
		
		See Also
		--------
		Series.str.slice : Just slicing without replacement.
		
		Examples
		--------
		>>> s = pd.Series(['a', 'ab', 'abc', 'abdc', 'abcde'])
		>>> s
		0        a
		1       ab
		2      abc
		3     abdc
		4    abcde
		dtype: object
		
		Specify just `start`, meaning replace `start` until the end of the
		string with `repl`.
		
		>>> s.str.slice_replace(1, repl='X')
		0    aX
		1    aX
		2    aX
		3    aX
		4    aX
		dtype: object
		
		Specify just `stop`, meaning the start of the string to `stop` is replaced
		with `repl`, and the rest of the string is included.
		
		>>> s.str.slice_replace(stop=2, repl='X')
		0       X
		1       X
		2      Xc
		3     Xdc
		4    Xcde
		dtype: object
		
		Specify `start` and `stop`, meaning the slice from `start` to `stop` is
		replaced with `repl`. Everything before or after `start` and `stop` is
		included as is.
		
		>>> s.str.slice_replace(start=1, stop=3, repl='X')
		0      aX
		1      aX
		2      aX
		3     aXc
		4    aXde
		dtype: object
	**/
	static public function str_slice_replace(arr:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	static public function str_split(arr:Dynamic, ?pat:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Test if the start of each string element matches a pattern.
		
		Equivalent to :meth:`str.startswith`.
		
		Parameters
		----------
		pat : str
		    Character sequence. Regular expressions are not accepted.
		na : object, default NaN
		    Object shown if element tested is not a string.
		
		Returns
		-------
		Series or Index of bool
		    A Series of booleans indicating whether the given pattern matches
		    the start of each string element.
		
		See Also
		--------
		str.startswith : Python standard library string method.
		Series.str.endswith : Same as startswith, but tests the end of string.
		Series.str.contains : Tests if string element contains a pattern.
		
		Examples
		--------
		>>> s = pd.Series(['bat', 'Bear', 'cat', np.nan])
		>>> s
		0     bat
		1    Bear
		2     cat
		3     NaN
		dtype: object
		
		>>> s.str.startswith('b')
		0     True
		1    False
		2    False
		3      NaN
		dtype: object
		
		Specifying `na` to be `False` instead of `NaN`.
		
		>>> s.str.startswith('b', na=False)
		0     True
		1    False
		2    False
		3    False
		dtype: bool
	**/
	static public function str_startswith(arr:Dynamic, pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Strip whitespace (including newlines) from each string in the
		Series/Index.
		
		Parameters
		----------
		to_strip : str or unicode
		side : {'left', 'right', 'both'}, default 'both'
		
		Returns
		-------
		stripped : Series/Index of objects
	**/
	static public function str_strip(arr:Dynamic, ?to_strip:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Map all characters in the string through the given mapping table.
		Equivalent to standard :meth:`str.translate`. Note that the optional
		argument deletechars is only valid if you are using python 2. For python 3,
		character deletion should be specified via the table argument.
		
		Parameters
		----------
		table : dict (python 3), str or None (python 2)
		    In python 3, table is a mapping of Unicode ordinals to Unicode
		    ordinals, strings, or None. Unmapped characters are left untouched.
		    Characters mapped to None are deleted. :meth:`str.maketrans` is a
		    helper function for making translation tables.
		    In python 2, table is either a string of length 256 or None. If the
		    table argument is None, no translation is applied and the operation
		    simply removes the characters in deletechars. :func:`string.maketrans`
		    is a helper function for making translation tables.
		deletechars : str, optional (python 2)
		    A string of characters to delete. This argument is only valid
		    in python 2.
		
		Returns
		-------
		translated : Series/Index of objects
	**/
	static public function str_translate(arr:Dynamic, table:Dynamic, ?deletechars:Dynamic):Dynamic;
	/**
		Wrap long strings in the Series/Index to be formatted in
		paragraphs with length less than a given width.
		
		This method has the same keyword parameters and defaults as
		:class:`textwrap.TextWrapper`.
		
		Parameters
		----------
		width : int
		    Maximum line-width
		expand_tabs : bool, optional
		    If true, tab characters will be expanded to spaces (default: True)
		replace_whitespace : bool, optional
		    If true, each whitespace character (as defined by string.whitespace)
		    remaining after tab expansion will be replaced by a single space
		    (default: True)
		drop_whitespace : bool, optional
		    If true, whitespace that, after wrapping, happens to end up at the
		    beginning or end of a line is dropped (default: True)
		break_long_words : bool, optional
		    If true, then words longer than width will be broken in order to ensure
		    that no lines are longer than width. If it is false, long words will
		    not be broken, and some lines may be longer than width. (default: True)
		break_on_hyphens : bool, optional
		    If true, wrapping will occur preferably on whitespace and right after
		    hyphens in compound words, as it is customary in English. If false,
		    only whitespaces will be considered as potentially good places for line
		    breaks, but you need to set break_long_words to false if you want truly
		    insecable words. (default: True)
		
		Returns
		-------
		wrapped : Series/Index of objects
		
		Notes
		-----
		Internally, this method uses a :class:`textwrap.TextWrapper` instance with
		default settings. To achieve behavior matching R's stringr library str_wrap
		function, use the arguments:
		
		- expand_tabs = False
		- replace_whitespace = True
		- drop_whitespace = True
		- break_long_words = False
		- break_on_hyphens = False
		
		Examples
		--------
		
		>>> s = pd.Series(['line to be wrapped', 'another line to be wrapped'])
		>>> s.str.wrap(12)
		0             line to be\nwrapped
		1    another line\nto be\nwrapped
	**/
	static public function str_wrap(arr:Dynamic, width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Parameters
		----------
		arr : array-like
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : array-like
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
}