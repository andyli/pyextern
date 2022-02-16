/* This file is generated, do not edit! */
package pandas.core.strings.accessor;
@:pythonImport("pandas.core.strings.accessor", "StringMethods") extern class StringMethods {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _doc_args : Dynamic;
	/**
		Prevents setting additional attributes.
	**/
	public function _freeze():Dynamic;
	/**
		Auxiliary function for :meth:`str.cat`. Turn potentially mixed input
		into a list of Series (elements without an index must match the length
		of the calling Series/Index).
		
		Parameters
		----------
		others : Series, DataFrame, np.ndarray, list-like or list-like of
		    Objects that are either Series, Index or np.ndarray (1-dim).
		
		Returns
		-------
		list of Series
		    Others transformed into list of Series.
	**/
	public function _get_series_list(others:Dynamic):Dynamic;
	/**
		Auxiliary function for StringMethods, infers and checks dtype of data.
		
		This is a "first line of defence" at the creation of the StringMethods-
		object, and just checks that the dtype is in the
		*union* of the allowed types over all string methods below; this
		restriction is then refined on a per-method basis using the decorator
		@forbid_nonstring_types (more info in the corresponding docstring).
		
		This really should exclude all series/index with any non-string values,
		but that isn't practical for performance reasons until we have a str
		dtype (GH 9343 / 13877)
		
		Parameters
		----------
		data : The content of the Series
		
		Returns
		-------
		dtype : inferred dtype of data
	**/
	static public function _validate(data:Dynamic):Dynamic;
	public function _wrap_result(result:Dynamic, ?name:Dynamic, ?expand:Dynamic, ?fill_value:Dynamic, ?returns_string:Dynamic, ?returns_bool:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to be capitalized.
		
		Equivalent to :meth:`str.capitalize`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function capitalize():Dynamic;
	/**
		Convert strings in the Series/Index to be casefolded.
		
		.. versionadded:: 0.25.0
		
		Equivalent to :meth:`str.casefold`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function casefold():Dynamic;
	/**
		Concatenate strings in the Series/Index with given separator.
		
		If `others` is specified, this function concatenates the Series/Index
		and elements of `others` element-wise.
		If `others` is not passed, then all values in the Series/Index are
		concatenated into a single string with a given `sep`.
		
		Parameters
		----------
		others : Series, Index, DataFrame, np.ndarray or list-like
		    Series, Index, DataFrame, np.ndarray (one- or two-dimensional) and
		    other list-likes of strings must have the same length as the
		    calling Series/Index, with the exception of indexed objects (i.e.
		    Series/Index/DataFrame) if `join` is not None.
		
		    If others is a list-like that contains a combination of Series,
		    Index or np.ndarray (1-dim), then all elements will be unpacked and
		    must satisfy the above criteria individually.
		
		    If others is None, the method returns the concatenation of all
		    strings in the calling Series/Index.
		sep : str, default ''
		    The separator between the different elements/columns. By default
		    the empty string `''` is used.
		na_rep : str or None, default None
		    Representation that is inserted for all missing values:
		
		    - If `na_rep` is None, and `others` is None, missing values in the
		      Series/Index are omitted from the result.
		    - If `na_rep` is None, and `others` is not None, a row containing a
		      missing value in any of the columns (before concatenation) will
		      have a missing value in the result.
		join : {'left', 'right', 'outer', 'inner'}, default 'left'
		    Determines the join-style between the calling Series/Index and any
		    Series/Index/DataFrame in `others` (objects without an index need
		    to match the length of the calling Series/Index). To disable
		    alignment, use `.values` on any Series/Index/DataFrame in `others`.
		
		    .. versionadded:: 0.23.0
		    .. versionchanged:: 1.0.0
		        Changed default of `join` from None to `'left'`.
		
		Returns
		-------
		str, Series or Index
		    If `others` is None, `str` is returned, otherwise a `Series/Index`
		    (same type as caller) of objects is returned.
		
		See Also
		--------
		split : Split each string in the Series/Index.
		join : Join lists contained as elements in the Series/Index.
		
		Examples
		--------
		When not passing `others`, all values are concatenated into a single
		string:
		
		>>> s = pd.Series(['a', 'b', np.nan, 'd'])
		>>> s.str.cat(sep=' ')
		'a b d'
		
		By default, NA values in the Series are ignored. Using `na_rep`, they
		can be given a representation:
		
		>>> s.str.cat(sep=' ', na_rep='?')
		'a b ? d'
		
		If `others` is specified, corresponding values are concatenated with
		the separator. Result will be a Series of strings.
		
		>>> s.str.cat(['A', 'B', 'C', 'D'], sep=',')
		0    a,A
		1    b,B
		2    NaN
		3    d,D
		dtype: object
		
		Missing values will remain missing in the result, but can again be
		represented using `na_rep`
		
		>>> s.str.cat(['A', 'B', 'C', 'D'], sep=',', na_rep='-')
		0    a,A
		1    b,B
		2    -,C
		3    d,D
		dtype: object
		
		If `sep` is not specified, the values are concatenated without
		separation.
		
		>>> s.str.cat(['A', 'B', 'C', 'D'], na_rep='-')
		0    aA
		1    bB
		2    -C
		3    dD
		dtype: object
		
		Series with different indexes can be aligned before concatenation. The
		`join`-keyword works as in other methods.
		
		>>> t = pd.Series(['d', 'a', 'e', 'c'], index=[3, 0, 4, 2])
		>>> s.str.cat(t, join='left', na_rep='-')
		0    aa
		1    b-
		2    -c
		3    dd
		dtype: object
		>>>
		>>> s.str.cat(t, join='outer', na_rep='-')
		0    aa
		1    b-
		2    -c
		3    dd
		4    -e
		dtype: object
		>>>
		>>> s.str.cat(t, join='inner', na_rep='-')
		0    aa
		2    -c
		3    dd
		dtype: object
		>>>
		>>> s.str.cat(t, join='right', na_rep='-')
		3    dd
		0    aa
		4    -e
		2    -c
		dtype: object
		
		For more examples, see :ref:`here <text.concatenate>`.
	**/
	public function cat(?others:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic, ?join:Dynamic):Dynamic;
	/**
		Pad left and right side of strings in the Series/Index.
		
		Equivalent to :meth:`str.center`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``.
		fillchar : str
		    Additional character for filling, default is whitespace.
		
		Returns
		-------
		filled : Series/Index of objects.
	**/
	public function center(width:Dynamic, ?fillchar:Dynamic):Dynamic;
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
		na : scalar, optional
		    Fill value for missing values. The default depends on dtype of the
		    array. For object-dtype, ``numpy.nan`` is used. For ``StringDtype``,
		    ``pandas.NA`` is used.
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
		
		>>> s1.str.contains('\\d', regex=True)
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
		
		>>> s2 = pd.Series(['40', '40.0', '41', '41.0', '35'])
		>>> s2.str.contains('.0', regex=True)
		0     True
		1     True
		2    False
		3     True
		4    False
		dtype: bool
	**/
	public function contains(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
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
		Series or Index
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
		>>> s.str.count('\\$')
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
	public function count(pat:Dynamic, ?flags:Dynamic):Dynamic;
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
		Series or Index
	**/
	public function decode(encoding:Dynamic, ?errors:Dynamic):Dynamic;
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
	public function encode(encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Test if the end of each string element matches a pattern.
		
		Equivalent to :meth:`str.endswith`.
		
		Parameters
		----------
		pat : str
		    Character sequence. Regular expressions are not accepted.
		na : object, default NaN
		    Object shown if element tested is not a string. The default depends
		    on dtype of the array. For object-dtype, ``numpy.nan`` is used.
		    For ``StringDtype``, ``pandas.NA`` is used.
		
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
	public function endswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Extract capture groups in the regex `pat` as columns in a DataFrame.
		
		For each subject string in the Series, extract groups from the
		first match of regular expression `pat`.
		
		Parameters
		----------
		pat : str
		    Regular expression pattern with capturing groups.
		flags : int, default 0 (no flags)
		    Flags from the ``re`` module, e.g. ``re.IGNORECASE``, that
		    modify regular expression matching for things like case,
		    spaces, etc. For more details, see :mod:`re`.
		expand : bool, default True
		    If True, return DataFrame with one column per capture group.
		    If False, return a Series/Index if there is one capture group
		    or DataFrame if there are multiple capture groups.
		
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
	public function extract(pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Extract capture groups in the regex `pat` as columns in DataFrame.
		
		For each subject string in the Series, extract groups from all
		matches of regular expression pat. When each subject string in the
		Series has exactly one match, extractall(pat).xs(0, level='match')
		is the same as extract(pat).
		
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
	public function extractall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Return lowest indexes in each strings in the Series/Index.
		
		Each of returned indexes corresponds to the position where the
		substring is fully contained between [start:end]. Return -1 on
		failure. Equivalent to standard :meth:`str.find`.
		
		Parameters
		----------
		sub : str
		    Substring being searched.
		start : int
		    Left edge index.
		end : int
		    Right edge index.
		
		Returns
		-------
		Series or Index of int.
		
		See Also
		--------
		rfind : Return highest indexes in each strings.
	**/
	public function find(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Find all occurrences of pattern or regular expression in the Series/Index.
		
		Equivalent to applying :func:`re.findall` to all the elements in the
		Series/Index.
		
		Parameters
		----------
		pat : str
		    Pattern or regular expression.
		flags : int, default 0
		    Flags from ``re`` module, e.g. `re.IGNORECASE` (default is 0, which
		    means no flags).
		
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
	public function findall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Determine if each string entirely matches a regular expression.
		
		.. versionadded:: 1.1.0
		
		Parameters
		----------
		pat : str
		    Character sequence or regular expression.
		case : bool, default True
		    If True, case sensitive.
		flags : int, default 0 (no flags)
		    Regex module flags, e.g. re.IGNORECASE.
		na : scalar, optional
		    Fill value for missing values. The default depends on dtype of the
		    array. For object-dtype, ``numpy.nan`` is used. For ``StringDtype``,
		    ``pandas.NA`` is used.
		
		Returns
		-------
		Series/Index/array of boolean values
		
		See Also
		--------
		match : Similar, but also returns `True` when only a *prefix* of the string
		    matches the regular expression.
		extract : Extract matched groups.
	**/
	public function fullmatch(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
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
		Series or Index
		
		Examples
		--------
		>>> s = pd.Series(["String",
		...               (1, 2, 3),
		...               ["a", "b", "c"],
		...               123,
		...               -456,
		...               {1: "Hello", "2": "World"}])
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
		5    None
		dtype: object
	**/
	public function get(i:Dynamic):Dynamic;
	/**
		Return DataFrame of dummy/indicator variables for Series.
		
		Each string in Series is split by sep and returned as a DataFrame
		of dummy/indicator variables.
		
		Parameters
		----------
		sep : str, default "|"
		    String to split on.
		
		Returns
		-------
		DataFrame
		    Dummy variables corresponding to values of the Series.
		
		See Also
		--------
		get_dummies : Convert categorical variable into dummy/indicator
		    variables.
		
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
	public function get_dummies(?sep:Dynamic):Dynamic;
	/**
		Return lowest indexes in each string in Series/Index.
		
		Each of the returned indexes corresponds to the position where the
		substring is fully contained between [start:end]. This is the same
		as ``str.find`` except instead of returning -1, it raises a
		ValueError when the substring is not found. Equivalent to standard
		``str.index``.
		
		Parameters
		----------
		sub : str
		    Substring being searched.
		start : int
		    Left edge index.
		end : int
		    Right edge index.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		rindex : Return highest indexes in each strings.
	**/
	public function index(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Check whether all characters in each string are alphanumeric.
		
		This is equivalent to running the Python string method
		:meth:`str.isalnum` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isalnum():Dynamic;
	/**
		Check whether all characters in each string are alphabetic.
		
		This is equivalent to running the Python string method
		:meth:`str.isalpha` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isalpha():Dynamic;
	/**
		Check whether all characters in each string are decimal.
		
		This is equivalent to running the Python string method
		:meth:`str.isdecimal` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isdecimal():Dynamic;
	/**
		Check whether all characters in each string are digits.
		
		This is equivalent to running the Python string method
		:meth:`str.isdigit` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isdigit():Dynamic;
	/**
		Check whether all characters in each string are lowercase.
		
		This is equivalent to running the Python string method
		:meth:`str.islower` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function islower():Dynamic;
	/**
		Check whether all characters in each string are numeric.
		
		This is equivalent to running the Python string method
		:meth:`str.isnumeric` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isnumeric():Dynamic;
	/**
		Check whether all characters in each string are whitespace.
		
		This is equivalent to running the Python string method
		:meth:`str.isspace` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isspace():Dynamic;
	/**
		Check whether all characters in each string are titlecase.
		
		This is equivalent to running the Python string method
		:meth:`str.istitle` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function istitle():Dynamic;
	/**
		Check whether all characters in each string are uppercase.
		
		This is equivalent to running the Python string method
		:meth:`str.isupper` for each element of the Series/Index. If a string
		has zero characters, ``False`` is returned for that check.
		
		Returns
		-------
		Series or Index of bool
		    Series or Index of boolean values with the same length as the original
		    Series/Index.
		
		See Also
		--------
		Series.str.isalpha : Check whether all characters are alphabetic.
		Series.str.isnumeric : Check whether all characters are numeric.
		Series.str.isalnum : Check whether all characters are alphanumeric.
		Series.str.isdigit : Check whether all characters are digits.
		Series.str.isdecimal : Check whether all characters are decimal.
		Series.str.isspace : Check whether all characters are whitespace.
		Series.str.islower : Check whether all characters are lowercase.
		Series.str.isupper : Check whether all characters are uppercase.
		Series.str.istitle : Check whether all characters are titlecase.
		
		Examples
		--------
		**Checks for Alphabetic and Numeric Characters**
		
		>>> s1 = pd.Series(['one', 'one1', '1', ''])
		
		>>> s1.str.isalpha()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s1.str.isnumeric()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		>>> s1.str.isalnum()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		Note that checks against characters mixed with any additional punctuation
		or whitespace will evaluate to false for an alphanumeric check.
		
		>>> s2 = pd.Series(['A B', '1.5', '3,000'])
		>>> s2.str.isalnum()
		0    False
		1    False
		2    False
		dtype: bool
		
		**More Detailed Checks for Numeric Characters**
		
		There are several different but overlapping sets of numeric characters that
		can be checked for.
		
		>>> s3 = pd.Series(['23', '³', '⅕', ''])
		
		The ``s3.str.isdecimal`` method checks for characters used to form numbers
		in base 10.
		
		>>> s3.str.isdecimal()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isdigit`` method is the same as ``s3.str.isdecimal`` but also
		includes special digits, like superscripted and subscripted digits in
		unicode.
		
		>>> s3.str.isdigit()
		0     True
		1     True
		2    False
		3    False
		dtype: bool
		
		The ``s.str.isnumeric`` method is the same as ``s3.str.isdigit`` but also
		includes other characters that can represent quantities such as unicode
		fractions.
		
		>>> s3.str.isnumeric()
		0     True
		1     True
		2     True
		3    False
		dtype: bool
		
		**Checks for Whitespace**
		
		>>> s4 = pd.Series([' ', '\t\r\n ', ''])
		>>> s4.str.isspace()
		0     True
		1     True
		2    False
		dtype: bool
		
		**Checks for Character Case**
		
		>>> s5 = pd.Series(['leopard', 'Golden Eagle', 'SNAKE', ''])
		
		>>> s5.str.islower()
		0     True
		1    False
		2    False
		3    False
		dtype: bool
		
		>>> s5.str.isupper()
		0    False
		1    False
		2     True
		3    False
		dtype: bool
		
		The ``s5.str.istitle`` method checks for whether all words are in title
		case (whether only the first letter of each word is capitalized). Words are
		assumed to be as any sequence of non-numeric characters separated by
		whitespace characters.
		
		>>> s5.str.istitle()
		0    False
		1     True
		2    False
		3    False
		dtype: bool
	**/
	public function isupper():Dynamic;
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
		------
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
	public function join(sep:Dynamic):Dynamic;
	/**
		Compute the length of each element in the Series/Index.
		
		The element may be a sequence (such as a string, tuple or list) or a collection
		(such as a dictionary).
		
		Returns
		-------
		Series or Index of int
		    A Series or Index of integer values indicating the length of each
		    element in the Series or Index.
		
		See Also
		--------
		str.len : Python built-in function returning the length of an object.
		Series.size : Returns the length of the Series.
		
		Examples
		--------
		Returns the length (number of characters) in a string. Returns the
		number of entries for dictionaries, lists or tuples.
		
		>>> s = pd.Series(['dog',
		...                 '',
		...                 5,
		...                 {'foo' : 'bar'},
		...                 [2, 3, 5, 7],
		...                 ('one', 'two', 'three')])
		>>> s
		0                  dog
		1
		2                    5
		3       {'foo': 'bar'}
		4         [2, 3, 5, 7]
		5    (one, two, three)
		dtype: object
		>>> s.str.len()
		0    3.0
		1    0.0
		2    NaN
		3    1.0
		4    4.0
		5    3.0
		dtype: float64
	**/
	public function len():Dynamic;
	/**
		Pad right side of strings in the Series/Index.
		
		Equivalent to :meth:`str.ljust`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``.
		fillchar : str
		    Additional character for filling, default is whitespace.
		
		Returns
		-------
		filled : Series/Index of objects.
	**/
	public function ljust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to lowercase.
		
		Equivalent to :meth:`str.lower`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function lower():Dynamic;
	/**
		Remove leading characters.
		
		Strip whitespaces (including newlines) or a set of specified characters
		from each string in the Series/Index from left side.
		Equivalent to :meth:`str.lstrip`.
		
		Parameters
		----------
		to_strip : str or None, default None
		    Specifying the set of characters to be removed.
		    All combinations of this set of characters will be stripped.
		    If None then whitespaces are removed.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.strip : Remove leading and trailing characters in Series/Index.
		Series.str.lstrip : Remove leading characters in Series/Index.
		Series.str.rstrip : Remove trailing characters in Series/Index.
		
		Examples
		--------
		>>> s = pd.Series(['1. Ant.  ', '2. Bee!\n', '3. Cat?\t', np.nan])
		>>> s
		0    1. Ant.
		1    2. Bee!\n
		2    3. Cat?\t
		3          NaN
		dtype: object
		
		>>> s.str.strip()
		0    1. Ant.
		1    2. Bee!
		2    3. Cat?
		3        NaN
		dtype: object
		
		>>> s.str.lstrip('123.')
		0    Ant.
		1    Bee!\n
		2    Cat?\t
		3       NaN
		dtype: object
		
		>>> s.str.rstrip('.!? \n\t')
		0    1. Ant
		1    2. Bee
		2    3. Cat
		3       NaN
		dtype: object
		
		>>> s.str.strip('123.!? \n\t')
		0    Ant
		1    Bee
		2    Cat
		3    NaN
		dtype: object
	**/
	public function lstrip(?to_strip:Dynamic):Dynamic;
	/**
		Determine if each string starts with a match of a regular expression.
		
		Parameters
		----------
		pat : str
		    Character sequence or regular expression.
		case : bool, default True
		    If True, case sensitive.
		flags : int, default 0 (no flags)
		    Regex module flags, e.g. re.IGNORECASE.
		na : scalar, optional
		    Fill value for missing values. The default depends on dtype of the
		    array. For object-dtype, ``numpy.nan`` is used. For ``StringDtype``,
		    ``pandas.NA`` is used.
		
		Returns
		-------
		Series/Index/array of boolean values
		
		See Also
		--------
		fullmatch : Stricter matching that requires the entire string to match.
		contains : Analogous, but less strict, relying on re.search instead of
		    re.match.
		extract : Extract matched groups.
	**/
	public function match(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Return the Unicode normal form for the strings in the Series/Index.
		
		For more information on the forms, see the
		:func:`unicodedata.normalize`.
		
		Parameters
		----------
		form : {'NFC', 'NFKC', 'NFD', 'NFKD'}
		    Unicode form.
		
		Returns
		-------
		normalized : Series/Index of objects
	**/
	public function normalize(form:Dynamic):Dynamic;
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
		Series.str.center : Fills both sides of strings with an arbitrary
		    character. Equivalent to ``Series.str.pad(side='both')``.
		Series.str.zfill : Pad strings in the Series/Index by prepending '0'
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
	public function pad(width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Split the string at the first occurrence of `sep`.
		
		This method splits the string at the first occurrence of `sep`,
		and returns 3 elements containing the part before the separator,
		the separator itself, and the part after the separator.
		If the separator is not found, return 3 elements containing the string itself, followed by two empty strings.
		
		Parameters
		----------
		sep : str, default whitespace
		    String to split on.
		expand : bool, default True
		    If True, return DataFrame/MultiIndex expanding dimensionality.
		    If False, return Series/Index.
		
		Returns
		-------
		DataFrame/MultiIndex or Series/Index of objects
		
		See Also
		--------
		rpartition : Split the string at the last occurrence of `sep`.
		Series.str.split : Split strings around given separators.
		str.partition : Standard library version.
		
		Examples
		--------
		
		>>> s = pd.Series(['Linda van der Berg', 'George Pitt-Rivers'])
		>>> s
		0    Linda van der Berg
		1    George Pitt-Rivers
		dtype: object
		
		>>> s.str.partition()
		        0  1             2
		0   Linda     van der Berg
		1  George      Pitt-Rivers
		
		To partition by the last space instead of the first one:
		
		>>> s.str.rpartition()
		               0  1            2
		0  Linda van der            Berg
		1         George     Pitt-Rivers
		
		To partition by something different than a space:
		
		>>> s.str.partition('-')
		                    0  1       2
		0  Linda van der Berg
		1         George Pitt  -  Rivers
		
		To return a Series containing tuples instead of a DataFrame:
		
		>>> s.str.partition('-', expand=False)
		0    (Linda van der Berg, , )
		1    (George Pitt, -, Rivers)
		dtype: object
		
		Also available on indices:
		
		>>> idx = pd.Index(['X 123', 'Y 999'])
		>>> idx
		Index(['X 123', 'Y 999'], dtype='object')
		
		Which will create a MultiIndex:
		
		>>> idx.str.partition()
		MultiIndex([('X', ' ', '123'),
		            ('Y', ' ', '999')],
		           )
		
		Or an index with tuples with ``expand=False``:
		
		>>> idx.str.partition(expand=False)
		Index([('X', ' ', '123'), ('Y', ' ', '999')], dtype='object')
	**/
	public function partition(?sep:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Remove a prefix from an object series. If the prefix is not present,
		the original string will be returned.
		
		Parameters
		----------
		prefix : str
		    Remove the prefix of the string.
		
		Returns
		-------
		Series/Index: object
		    The Series or Index with given prefix removed.
		
		See Also
		--------
		Series.str.removesuffix : Remove a suffix from an object series.
		
		Examples
		--------
		>>> s = pd.Series(["str_foo", "str_bar", "no_prefix"])
		>>> s
		0    str_foo
		1    str_bar
		2    no_prefix
		dtype: object
		>>> s.str.removeprefix("str_")
		0    foo
		1    bar
		2    no_prefix
		dtype: object
		
		>>> s = pd.Series(["foo_str", "bar_str", "no_suffix"])
		>>> s
		0    foo_str
		1    bar_str
		2    no_suffix
		dtype: object
		>>> s.str.removesuffix("_str")
		0    foo
		1    bar
		2    no_suffix
		dtype: object
	**/
	public function removeprefix(prefix:Dynamic):Dynamic;
	/**
		Remove a suffix from an object series. If the suffix is not present,
		the original string will be returned.
		
		Parameters
		----------
		suffix : str
		    Remove the suffix of the string.
		
		Returns
		-------
		Series/Index: object
		    The Series or Index with given suffix removed.
		
		See Also
		--------
		Series.str.removeprefix : Remove a prefix from an object series.
		
		Examples
		--------
		>>> s = pd.Series(["str_foo", "str_bar", "no_prefix"])
		>>> s
		0    str_foo
		1    str_bar
		2    no_prefix
		dtype: object
		>>> s.str.removeprefix("str_")
		0    foo
		1    bar
		2    no_prefix
		dtype: object
		
		>>> s = pd.Series(["foo_str", "bar_str", "no_suffix"])
		>>> s
		0    foo_str
		1    bar_str
		2    no_suffix
		dtype: object
		>>> s.str.removesuffix("_str")
		0    foo
		1    bar
		2    no_suffix
		dtype: object
	**/
	public function removesuffix(suffix:Dynamic):Dynamic;
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
		dtype: object
		
		Single int repeats string in Series
		
		>>> s.str.repeat(repeats=2)
		0    aa
		1    bb
		2    cc
		dtype: object
		
		Sequence of int repeats corresponding string in Series
		
		>>> s.str.repeat(repeats=[1, 2, 3])
		0      a
		1     bb
		2    ccc
		dtype: object
	**/
	public function repeat(repeats:Dynamic):Dynamic;
	/**
		Replace each occurrence of pattern/regex in the Series/Index.
		
		Equivalent to :meth:`str.replace` or :func:`re.sub`, depending on
		the regex value.
		
		Parameters
		----------
		pat : str or compiled regex
		    String can be a character sequence or regular expression.
		repl : str or callable
		    Replacement string or a callable. The callable is passed the regex
		    match object and must return a replacement string to be used.
		    See :func:`re.sub`.
		n : int, default -1 (all)
		    Number of replacements to make from start.
		case : bool, default None
		    Determines if replace is case sensitive:
		
		    - If True, case sensitive (the default if `pat` is a string)
		    - Set to False for case insensitive
		    - Cannot be set if `pat` is a compiled regex.
		
		flags : int, default 0 (no flags)
		    Regex module flags, e.g. re.IGNORECASE. Cannot be set if `pat` is a compiled
		    regex.
		regex : bool, default True
		    Determines if the passed-in pattern is a regular expression:
		
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
		
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace('f', repr, regex=True)
		0    <re.Match object; span=(0, 1), match='f'>oo
		1    <re.Match object; span=(0, 1), match='f'>uz
		2                                            NaN
		dtype: object
		
		Reverse every lowercase alphabetic word:
		
		>>> repl = lambda m: m.group(0)[::-1]
		>>> ser = pd.Series(['foo 123', 'bar baz', np.nan])
		>>> ser.str.replace(r'[a-z]+', repl, regex=True)
		0    oof 123
		1    rab zab
		2        NaN
		dtype: object
		
		Using regex groups (extract second group and swap case):
		
		>>> pat = r"(?P<one>\w+) (?P<two>\w+) (?P<three>\w+)"
		>>> repl = lambda m: m.group('two').swapcase()
		>>> ser = pd.Series(['One Two Three', 'Foo Bar Baz'])
		>>> ser.str.replace(pat, repl, regex=True)
		0    tWO
		1    bAR
		dtype: object
		
		Using a compiled regex with flags
		
		>>> import re
		>>> regex_pat = re.compile(r'FUZ', flags=re.IGNORECASE)
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace(regex_pat, 'bar', regex=True)
		0    foo
		1    bar
		2    NaN
		dtype: object
	**/
	public function replace(pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Return highest indexes in each strings in the Series/Index.
		
		Each of returned indexes corresponds to the position where the
		substring is fully contained between [start:end]. Return -1 on
		failure. Equivalent to standard :meth:`str.rfind`.
		
		Parameters
		----------
		sub : str
		    Substring being searched.
		start : int
		    Left edge index.
		end : int
		    Right edge index.
		
		Returns
		-------
		Series or Index of int.
		
		See Also
		--------
		find : Return lowest indexes in each strings.
	**/
	public function rfind(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Return highest indexes in each string in Series/Index.
		
		Each of the returned indexes corresponds to the position where the
		substring is fully contained between [start:end]. This is the same
		as ``str.rfind`` except instead of returning -1, it raises a
		ValueError when the substring is not found. Equivalent to standard
		``str.rindex``.
		
		Parameters
		----------
		sub : str
		    Substring being searched.
		start : int
		    Left edge index.
		end : int
		    Right edge index.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		index : Return lowest indexes in each strings.
	**/
	public function rindex(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Pad left side of strings in the Series/Index.
		
		Equivalent to :meth:`str.rjust`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``.
		fillchar : str
		    Additional character for filling, default is whitespace.
		
		Returns
		-------
		filled : Series/Index of objects.
	**/
	public function rjust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Split the string at the last occurrence of `sep`.
		
		This method splits the string at the last occurrence of `sep`,
		and returns 3 elements containing the part before the separator,
		the separator itself, and the part after the separator.
		If the separator is not found, return 3 elements containing two empty strings, followed by the string itself.
		
		Parameters
		----------
		sep : str, default whitespace
		    String to split on.
		expand : bool, default True
		    If True, return DataFrame/MultiIndex expanding dimensionality.
		    If False, return Series/Index.
		
		Returns
		-------
		DataFrame/MultiIndex or Series/Index of objects
		
		See Also
		--------
		partition : Split the string at the first occurrence of `sep`.
		Series.str.split : Split strings around given separators.
		str.partition : Standard library version.
		
		Examples
		--------
		
		>>> s = pd.Series(['Linda van der Berg', 'George Pitt-Rivers'])
		>>> s
		0    Linda van der Berg
		1    George Pitt-Rivers
		dtype: object
		
		>>> s.str.partition()
		        0  1             2
		0   Linda     van der Berg
		1  George      Pitt-Rivers
		
		To partition by the last space instead of the first one:
		
		>>> s.str.rpartition()
		               0  1            2
		0  Linda van der            Berg
		1         George     Pitt-Rivers
		
		To partition by something different than a space:
		
		>>> s.str.partition('-')
		                    0  1       2
		0  Linda van der Berg
		1         George Pitt  -  Rivers
		
		To return a Series containing tuples instead of a DataFrame:
		
		>>> s.str.partition('-', expand=False)
		0    (Linda van der Berg, , )
		1    (George Pitt, -, Rivers)
		dtype: object
		
		Also available on indices:
		
		>>> idx = pd.Index(['X 123', 'Y 999'])
		>>> idx
		Index(['X 123', 'Y 999'], dtype='object')
		
		Which will create a MultiIndex:
		
		>>> idx.str.partition()
		MultiIndex([('X', ' ', '123'),
		            ('Y', ' ', '999')],
		           )
		
		Or an index with tuples with ``expand=False``:
		
		>>> idx.str.partition(expand=False)
		Index([('X', ' ', '123'), ('Y', ' ', '999')], dtype='object')
	**/
	public function rpartition(?sep:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Split strings around given separator/delimiter.
		
		Splits the string in the Series/Index from the end,
		at the specified delimiter string.
		
		Parameters
		----------
		pat : str or compiled regex, optional
		    String or regular expression to split on.
		    If not specified, split on whitespace.
		n : int, default -1 (all)
		    Limit number of splits in output.
		    ``None``, 0 and -1 will be interpreted as return all splits.
		expand : bool, default False
		    Expand the split strings into separate columns.
		
		    - If ``True``, return DataFrame/MultiIndex expanding dimensionality.
		    - If ``False``, return Series/Index, containing lists of strings.
		
		regex : bool, default None
		    Determines if the passed-in pattern is a regular expression:
		
		    - If ``True``, assumes the passed-in pattern is a regular expression
		    - If ``False``, treats the pattern as a literal string.
		    - If ``None`` and `pat` length is 1, treats `pat` as a literal string.
		    - If ``None`` and `pat` length is not 1, treats `pat` as a regular expression.
		    - Cannot be set to False if `pat` is a compiled regex
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		Series, Index, DataFrame or MultiIndex
		    Type matches caller unless ``expand=True`` (see Notes).
		
		Raises
		------
		ValueError
		    * if `regex` is False and `pat` is a compiled regex
		
		See Also
		--------
		Series.str.split : Split strings around given separator/delimiter.
		Series.str.rsplit : Splits string around given separator/delimiter,
		    starting from the right.
		Series.str.join : Join lists contained as elements in the Series/Index
		    with passed delimiter.
		str.split : Standard library version for split.
		str.rsplit : Standard library version for rsplit.
		
		Notes
		-----
		The handling of the `n` keyword depends on the number of found splits:
		
		- If found splits > `n`,  make first `n` splits only
		- If found splits <= `n`, make all splits
		- If for a certain row the number of found splits < `n`,
		  append `None` for padding up to `n` if ``expand=True``
		
		If using ``expand=True``, Series and Index callers return DataFrame and
		MultiIndex objects, respectively.
		
		Use of `regex=False` with a `pat` as a compiled regex will raise
		an error.
		
		Examples
		--------
		>>> s = pd.Series(
		...     [
		...         "this is a regular sentence",
		...         "https://docs.python.org/3/tutorial/index.html",
		...         np.nan
		...     ]
		... )
		>>> s
		0                       this is a regular sentence
		1    https://docs.python.org/3/tutorial/index.html
		2                                              NaN
		dtype: object
		
		In the default setting, the string is split by whitespace.
		
		>>> s.str.split()
		0                   [this, is, a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		Without the `n` parameter, the outputs of `rsplit` and `split`
		are identical.
		
		>>> s.str.rsplit()
		0                   [this, is, a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		The `n` parameter can be used to limit the number of splits on the
		delimiter. The outputs of `split` and `rsplit` are different.
		
		>>> s.str.split(n=2)
		0                     [this, is, a regular sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		>>> s.str.rsplit(n=2)
		0                     [this is a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		The `pat` parameter can be used to split by other characters.
		
		>>> s.str.split(pat="/")
		0                         [this is a regular sentence]
		1    [https:, , docs.python.org, 3, tutorial, index...
		2                                                  NaN
		dtype: object
		
		When using ``expand=True``, the split elements will expand out into
		separate columns. If NaN is present, it is propagated throughout
		the columns during the split.
		
		>>> s.str.split(expand=True)
		                                               0     1     2        3         4
		0                                           this    is     a  regular  sentence
		1  https://docs.python.org/3/tutorial/index.html  None  None     None      None
		2                                            NaN   NaN   NaN      NaN       NaN
		
		For slightly more complex use cases like splitting the html document name
		from a url, a combination of parameter settings can be used.
		
		>>> s.str.rsplit("/", n=1, expand=True)
		                                    0           1
		0          this is a regular sentence        None
		1  https://docs.python.org/3/tutorial  index.html
		2                                 NaN         NaN
		
		Remember to escape special characters when explicitly using regular expressions.
		
		>>> s = pd.Series(["foo and bar plus baz"])
		>>> s.str.split(r"and|plus", expand=True)
		    0   1   2
		0 foo bar baz
		
		Regular expressions can be used to handle urls or file names.
		When `pat` is a string and ``regex=None`` (the default), the given `pat` is compiled
		as a regex only if ``len(pat) != 1``.
		
		>>> s = pd.Series(['foojpgbar.jpg'])
		>>> s.str.split(r".", expand=True)
		           0    1
		0  foojpgbar  jpg
		
		>>> s.str.split(r"\.jpg", expand=True)
		           0 1
		0  foojpgbar
		
		When ``regex=True``, `pat` is interpreted as a regex
		
		>>> s.str.split(r"\.jpg", regex=True, expand=True)
		           0 1
		0  foojpgbar
		
		A compiled regex can be passed as `pat`
		
		>>> import re
		>>> s.str.split(re.compile(r"\.jpg"), expand=True)
		           0 1
		0  foojpgbar
		
		When ``regex=False``, `pat` is interpreted as the string itself
		
		>>> s.str.split(r"\.jpg", regex=False, expand=True)
		               0
		0  foojpgbar.jpg
	**/
	public function rsplit(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Remove trailing characters.
		
		Strip whitespaces (including newlines) or a set of specified characters
		from each string in the Series/Index from right side.
		Equivalent to :meth:`str.rstrip`.
		
		Parameters
		----------
		to_strip : str or None, default None
		    Specifying the set of characters to be removed.
		    All combinations of this set of characters will be stripped.
		    If None then whitespaces are removed.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.strip : Remove leading and trailing characters in Series/Index.
		Series.str.lstrip : Remove leading characters in Series/Index.
		Series.str.rstrip : Remove trailing characters in Series/Index.
		
		Examples
		--------
		>>> s = pd.Series(['1. Ant.  ', '2. Bee!\n', '3. Cat?\t', np.nan])
		>>> s
		0    1. Ant.
		1    2. Bee!\n
		2    3. Cat?\t
		3          NaN
		dtype: object
		
		>>> s.str.strip()
		0    1. Ant.
		1    2. Bee!
		2    3. Cat?
		3        NaN
		dtype: object
		
		>>> s.str.lstrip('123.')
		0    Ant.
		1    Bee!\n
		2    Cat?\t
		3       NaN
		dtype: object
		
		>>> s.str.rstrip('.!? \n\t')
		0    1. Ant
		1    2. Bee
		2    3. Cat
		3       NaN
		dtype: object
		
		>>> s.str.strip('123.!? \n\t')
		0    Ant
		1    Bee
		2    Cat
		3    NaN
		dtype: object
	**/
	public function rstrip(?to_strip:Dynamic):Dynamic;
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
		>>> s = pd.Series(["koala", "dog", "chameleon"])
		>>> s
		0        koala
		1          dog
		2    chameleon
		dtype: object
		
		>>> s.str.slice(start=1)
		0        oala
		1          og
		2    hameleon
		dtype: object
		
		>>> s.str.slice(start=-1)
		0           a
		1           g
		2           n
		dtype: object
		
		>>> s.str.slice(stop=2)
		0    ko
		1    do
		2    ch
		dtype: object
		
		>>> s.str.slice(step=2)
		0      kaa
		1       dg
		2    caeen
		dtype: object
		
		>>> s.str.slice(start=0, stop=5, step=3)
		0    kl
		1     d
		2    cm
		dtype: object
		
		Equivalent behaviour to:
		
		>>> s.str[0:5:3]
		0    kl
		1     d
		2    cm
		dtype: object
	**/
	public function slice(?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
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
		Series or Index
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
	public function slice_replace(?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	/**
		Split strings around given separator/delimiter.
		
		Splits the string in the Series/Index from the beginning,
		at the specified delimiter string.
		
		Parameters
		----------
		pat : str or compiled regex, optional
		    String or regular expression to split on.
		    If not specified, split on whitespace.
		n : int, default -1 (all)
		    Limit number of splits in output.
		    ``None``, 0 and -1 will be interpreted as return all splits.
		expand : bool, default False
		    Expand the split strings into separate columns.
		
		    - If ``True``, return DataFrame/MultiIndex expanding dimensionality.
		    - If ``False``, return Series/Index, containing lists of strings.
		
		regex : bool, default None
		    Determines if the passed-in pattern is a regular expression:
		
		    - If ``True``, assumes the passed-in pattern is a regular expression
		    - If ``False``, treats the pattern as a literal string.
		    - If ``None`` and `pat` length is 1, treats `pat` as a literal string.
		    - If ``None`` and `pat` length is not 1, treats `pat` as a regular expression.
		    - Cannot be set to False if `pat` is a compiled regex
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		Series, Index, DataFrame or MultiIndex
		    Type matches caller unless ``expand=True`` (see Notes).
		
		Raises
		------
		ValueError
		    * if `regex` is False and `pat` is a compiled regex
		
		See Also
		--------
		Series.str.split : Split strings around given separator/delimiter.
		Series.str.rsplit : Splits string around given separator/delimiter,
		    starting from the right.
		Series.str.join : Join lists contained as elements in the Series/Index
		    with passed delimiter.
		str.split : Standard library version for split.
		str.rsplit : Standard library version for rsplit.
		
		Notes
		-----
		The handling of the `n` keyword depends on the number of found splits:
		
		- If found splits > `n`,  make first `n` splits only
		- If found splits <= `n`, make all splits
		- If for a certain row the number of found splits < `n`,
		  append `None` for padding up to `n` if ``expand=True``
		
		If using ``expand=True``, Series and Index callers return DataFrame and
		MultiIndex objects, respectively.
		
		Use of `regex=False` with a `pat` as a compiled regex will raise
		an error.
		
		Examples
		--------
		>>> s = pd.Series(
		...     [
		...         "this is a regular sentence",
		...         "https://docs.python.org/3/tutorial/index.html",
		...         np.nan
		...     ]
		... )
		>>> s
		0                       this is a regular sentence
		1    https://docs.python.org/3/tutorial/index.html
		2                                              NaN
		dtype: object
		
		In the default setting, the string is split by whitespace.
		
		>>> s.str.split()
		0                   [this, is, a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		Without the `n` parameter, the outputs of `rsplit` and `split`
		are identical.
		
		>>> s.str.rsplit()
		0                   [this, is, a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		The `n` parameter can be used to limit the number of splits on the
		delimiter. The outputs of `split` and `rsplit` are different.
		
		>>> s.str.split(n=2)
		0                     [this, is, a regular sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		>>> s.str.rsplit(n=2)
		0                     [this is a, regular, sentence]
		1    [https://docs.python.org/3/tutorial/index.html]
		2                                                NaN
		dtype: object
		
		The `pat` parameter can be used to split by other characters.
		
		>>> s.str.split(pat="/")
		0                         [this is a regular sentence]
		1    [https:, , docs.python.org, 3, tutorial, index...
		2                                                  NaN
		dtype: object
		
		When using ``expand=True``, the split elements will expand out into
		separate columns. If NaN is present, it is propagated throughout
		the columns during the split.
		
		>>> s.str.split(expand=True)
		                                               0     1     2        3         4
		0                                           this    is     a  regular  sentence
		1  https://docs.python.org/3/tutorial/index.html  None  None     None      None
		2                                            NaN   NaN   NaN      NaN       NaN
		
		For slightly more complex use cases like splitting the html document name
		from a url, a combination of parameter settings can be used.
		
		>>> s.str.rsplit("/", n=1, expand=True)
		                                    0           1
		0          this is a regular sentence        None
		1  https://docs.python.org/3/tutorial  index.html
		2                                 NaN         NaN
		
		Remember to escape special characters when explicitly using regular expressions.
		
		>>> s = pd.Series(["foo and bar plus baz"])
		>>> s.str.split(r"and|plus", expand=True)
		    0   1   2
		0 foo bar baz
		
		Regular expressions can be used to handle urls or file names.
		When `pat` is a string and ``regex=None`` (the default), the given `pat` is compiled
		as a regex only if ``len(pat) != 1``.
		
		>>> s = pd.Series(['foojpgbar.jpg'])
		>>> s.str.split(r".", expand=True)
		           0    1
		0  foojpgbar  jpg
		
		>>> s.str.split(r"\.jpg", expand=True)
		           0 1
		0  foojpgbar
		
		When ``regex=True``, `pat` is interpreted as a regex
		
		>>> s.str.split(r"\.jpg", regex=True, expand=True)
		           0 1
		0  foojpgbar
		
		A compiled regex can be passed as `pat`
		
		>>> import re
		>>> s.str.split(re.compile(r"\.jpg"), expand=True)
		           0 1
		0  foojpgbar
		
		When ``regex=False``, `pat` is interpreted as the string itself
		
		>>> s.str.split(r"\.jpg", regex=False, expand=True)
		               0
		0  foojpgbar.jpg
	**/
	public function split(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Test if the start of each string element matches a pattern.
		
		Equivalent to :meth:`str.startswith`.
		
		Parameters
		----------
		pat : str
		    Character sequence. Regular expressions are not accepted.
		na : object, default NaN
		    Object shown if element tested is not a string. The default depends
		    on dtype of the array. For object-dtype, ``numpy.nan`` is used.
		    For ``StringDtype``, ``pandas.NA`` is used.
		
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
	public function startswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Remove leading and trailing characters.
		
		Strip whitespaces (including newlines) or a set of specified characters
		from each string in the Series/Index from left and right sides.
		Equivalent to :meth:`str.strip`.
		
		Parameters
		----------
		to_strip : str or None, default None
		    Specifying the set of characters to be removed.
		    All combinations of this set of characters will be stripped.
		    If None then whitespaces are removed.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.strip : Remove leading and trailing characters in Series/Index.
		Series.str.lstrip : Remove leading characters in Series/Index.
		Series.str.rstrip : Remove trailing characters in Series/Index.
		
		Examples
		--------
		>>> s = pd.Series(['1. Ant.  ', '2. Bee!\n', '3. Cat?\t', np.nan])
		>>> s
		0    1. Ant.
		1    2. Bee!\n
		2    3. Cat?\t
		3          NaN
		dtype: object
		
		>>> s.str.strip()
		0    1. Ant.
		1    2. Bee!
		2    3. Cat?
		3        NaN
		dtype: object
		
		>>> s.str.lstrip('123.')
		0    Ant.
		1    Bee!\n
		2    Cat?\t
		3       NaN
		dtype: object
		
		>>> s.str.rstrip('.!? \n\t')
		0    1. Ant
		1    2. Bee
		2    3. Cat
		3       NaN
		dtype: object
		
		>>> s.str.strip('123.!? \n\t')
		0    Ant
		1    Bee
		2    Cat
		3    NaN
		dtype: object
	**/
	public function strip(?to_strip:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to be swapcased.
		
		Equivalent to :meth:`str.swapcase`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function swapcase():Dynamic;
	/**
		Convert strings in the Series/Index to titlecase.
		
		Equivalent to :meth:`str.title`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function title():Dynamic;
	/**
		Map all characters in the string through the given mapping table.
		
		Equivalent to standard :meth:`str.translate`.
		
		Parameters
		----------
		table : dict
		    Table is a mapping of Unicode ordinals to Unicode ordinals, strings, or
		    None. Unmapped characters are left untouched.
		    Characters mapped to None are deleted. :meth:`str.maketrans` is a
		    helper function for making translation tables.
		
		Returns
		-------
		Series or Index
	**/
	public function translate(table:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to uppercase.
		
		Equivalent to :meth:`str.upper`.
		
		Returns
		-------
		Series or Index of object
		
		See Also
		--------
		Series.str.lower : Converts all characters to lowercase.
		Series.str.upper : Converts all characters to uppercase.
		Series.str.title : Converts first character of each word to uppercase and
		    remaining to lowercase.
		Series.str.capitalize : Converts first character to uppercase and
		    remaining to lowercase.
		Series.str.swapcase : Converts uppercase to lowercase and lowercase to
		    uppercase.
		Series.str.casefold: Removes all case distinctions in the string.
		
		Examples
		--------
		>>> s = pd.Series(['lower', 'CAPITALS', 'this is a sentence', 'SwApCaSe'])
		>>> s
		0                 lower
		1              CAPITALS
		2    this is a sentence
		3              SwApCaSe
		dtype: object
		
		>>> s.str.lower()
		0                 lower
		1              capitals
		2    this is a sentence
		3              swapcase
		dtype: object
		
		>>> s.str.upper()
		0                 LOWER
		1              CAPITALS
		2    THIS IS A SENTENCE
		3              SWAPCASE
		dtype: object
		
		>>> s.str.title()
		0                 Lower
		1              Capitals
		2    This Is A Sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.capitalize()
		0                 Lower
		1              Capitals
		2    This is a sentence
		3              Swapcase
		dtype: object
		
		>>> s.str.swapcase()
		0                 LOWER
		1              capitals
		2    THIS IS A SENTENCE
		3              sWaPcAsE
		dtype: object
	**/
	public function upper():Dynamic;
	/**
		Wrap strings in Series/Index at specified line width.
		
		This method has the same keyword parameters and defaults as
		:class:`textwrap.TextWrapper`.
		
		Parameters
		----------
		width : int
		    Maximum line width.
		expand_tabs : bool, optional
		    If True, tab characters will be expanded to spaces (default: True).
		replace_whitespace : bool, optional
		    If True, each whitespace character (as defined by string.whitespace)
		    remaining after tab expansion will be replaced by a single space
		    (default: True).
		drop_whitespace : bool, optional
		    If True, whitespace that, after wrapping, happens to end up at the
		    beginning or end of a line is dropped (default: True).
		break_long_words : bool, optional
		    If True, then words longer than width will be broken in order to ensure
		    that no lines are longer than width. If it is false, long words will
		    not be broken, and some lines may be longer than width (default: True).
		break_on_hyphens : bool, optional
		    If True, wrapping will occur preferably on whitespace and right after
		    hyphens in compound words, as it is customary in English. If false,
		    only whitespaces will be considered as potentially good places for line
		    breaks, but you need to set break_long_words to false if you want truly
		    insecable words (default: True).
		
		Returns
		-------
		Series or Index
		
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
		dtype: object
	**/
	public function wrap(width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pad strings in the Series/Index by prepending '0' characters.
		
		Strings in the Series/Index are padded with '0' characters on the
		left of the string to reach a total string length  `width`. Strings
		in the Series/Index with length greater or equal to `width` are
		unchanged.
		
		Parameters
		----------
		width : int
		    Minimum length of resulting string; strings with length less
		    than `width` be prepended with '0' characters.
		
		Returns
		-------
		Series/Index of objects.
		
		See Also
		--------
		Series.str.rjust : Fills the left side of strings with an arbitrary
		    character.
		Series.str.ljust : Fills the right side of strings with an arbitrary
		    character.
		Series.str.pad : Fills the specified sides of strings with an arbitrary
		    character.
		Series.str.center : Fills both sides of strings with an arbitrary
		    character.
		
		Notes
		-----
		Differs from :meth:`str.zfill` which has special handling
		for '+'/'-' in the string.
		
		Examples
		--------
		>>> s = pd.Series(['-1', '1', '1000', 10, np.nan])
		>>> s
		0      -1
		1       1
		2    1000
		3      10
		4     NaN
		dtype: object
		
		Note that ``10`` and ``NaN`` are not strings, therefore they are
		converted to ``NaN``. The minus sign in ``'-1'`` is treated as a
		regular character and the zero is added to the left of it
		(:meth:`str.zfill` would have moved it to the left). ``1000``
		remains unchanged as it is longer than `width`.
		
		>>> s.str.zfill(3)
		0     0-1
		1     001
		2    1000
		3     NaN
		4     NaN
		dtype: object
	**/
	public function zfill(width:Dynamic):Dynamic;
}