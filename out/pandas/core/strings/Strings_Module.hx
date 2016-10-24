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
	static public function _get_array_list(arr:Dynamic, others:Dynamic):Dynamic;
	static public function _get_single_group_name(rx:Dynamic):Dynamic;
	/**
		Used in both extract_noexpand and extract_frame
	**/
	static public function _groups_or_na_fun(regex:Dynamic):Dynamic;
	static public function _length_check(others:Dynamic):Dynamic;
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
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Copy a docstring from another source function (if present)
	**/
	static public function copy(source:Dynamic):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
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
		Concatenate strings in the Series/Index with given separator.
		
		Parameters
		----------
		others : list-like, or list of list-likes
		  If None, returns str concatenating strings of the Series
		sep : string or None, default None
		na_rep : string or None, default None
		    If None, NA in the series are ignored.
		
		Returns
		-------
		concat : Series/Index of objects or str
		
		Examples
		--------
		When ``na_rep`` is `None` (default behavior), NaN value(s)
		in the Series are ignored.
		
		>>> Series(['a','b',np.nan,'c']).str.cat(sep=' ')
		'a b c'
		
		>>> Series(['a','b',np.nan,'c']).str.cat(sep=' ', na_rep='?')
		'a b ? c'
		
		If ``others`` is specified, corresponding values are
		concatenated with the separator. Result will be a Series of strings.
		
		>>> Series(['a', 'b', 'c']).str.cat(['A', 'B', 'C'], sep=',')
		0    a,A
		1    b,B
		2    c,C
		dtype: object
		
		Otherwise, strings in the Series are concatenated. Result will be a string.
		
		>>> Series(['a', 'b', 'c']).str.cat(sep=',')
		'a,b,c'
		
		Also, you can pass a list of list-likes.
		
		>>> Series(['a', 'b']).str.cat([['x', 'y'], ['1', '2']], sep=',')
		0    a,x,1
		1    b,y,2
		dtype: object
	**/
	static public function str_cat(arr:Dynamic, ?others:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic):Dynamic;
	/**
		Return boolean Series/``array`` whether given pattern/regex is
		contained in each string in the Series/Index.
		
		Parameters
		----------
		pat : string
		    Character sequence or regular expression
		case : boolean, default True
		    If True, case sensitive
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		na : default NaN, fill value for missing values.
		regex : bool, default True
		    If True use re.search, otherwise use Python in operator
		
		Returns
		-------
		contained : Series/array of boolean values
		
		See Also
		--------
		match : analogous, but stricter, relying on re.match instead of re.search
	**/
	static public function str_contains(arr:Dynamic, pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Count occurrences of pattern in each string of the Series/Index.
		
		Parameters
		----------
		pat : string, valid regular expression
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		
		Returns
		-------
		counts : Series/Index of integer values
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
		Return boolean Series indicating whether each string in the
		Series/Index ends with passed pattern. Equivalent to
		:meth:`str.endswith`.
		
		Parameters
		----------
		pat : string
		    Character sequence
		na : bool, default NaN
		
		Returns
		-------
		endswith : Series/array of boolean values
	**/
	static public function str_endswith(arr:Dynamic, pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		For each subject string in the Series, extract groups from the
		first match of regular expression pat.
		
		.. versionadded:: 0.13.0
		
		Parameters
		----------
		pat : string
		    Regular expression pattern with capturing groups
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		
		.. versionadded:: 0.18.0
		expand : bool, default False
		    * If True, return DataFrame.
		    * If False, return Series/Index/DataFrame.
		
		Returns
		-------
		DataFrame with one row for each subject string, and one column for
		each group. Any capture group names in regular expression pat will
		be used for column names; otherwise capture group numbers will be
		used. The dtype of each result column is always object, even when
		no match is found. If expand=False and pat has only one capture group,
		then return a Series (if subject is a Series) or Index (if subject
		is an Index).
		
		See Also
		--------
		extractall : returns all matches (not just the first match)
		
		Examples
		--------
		A pattern with two groups will return a DataFrame with two columns.
		Non-matches will be NaN.
		
		>>> s = Series(['a1', 'b2', 'c3'])
		>>> s.str.extract('([ab])(\d)')
		     0    1
		0    a    1
		1    b    2
		2  NaN  NaN
		
		A pattern may contain optional groups.
		
		>>> s.str.extract('([ab])?(\d)')
		     0  1
		0    a  1
		1    b  2
		2  NaN  3
		
		Named groups will become column names in the result.
		
		>>> s.str.extract('(?P<letter>[ab])(?P<digit>\d)')
		  letter digit
		0      a     1
		1      b     2
		2    NaN   NaN
		
		A pattern with one group will return a DataFrame with one column
		if expand=True.
		
		>>> s.str.extract('[ab](\d)', expand=True)
		     0
		0    1
		1    2
		2  NaN
		
		A pattern with one group will return a Series if expand=False.
		
		>>> s.str.extract('[ab](\d)', expand=False)
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
		pat : string
		    Regular expression pattern with capturing groups
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		
		Returns
		-------
		A DataFrame with one row for each match, and one column for each
		group. Its rows have a MultiIndex with first levels that come from
		the subject Series. The last level is named 'match' and indicates
		the order in the subject. Any capture group names in regular
		expression pat will be used for column names; otherwise capture
		group numbers will be used.
		
		See Also
		--------
		extract : returns first match only (not all matches)
		
		Examples
		--------
		A pattern with one group will return a DataFrame with one column.
		Indices with no matches will not appear in the result.
		
		>>> s = Series(["a1a2", "b1", "c1"], index=["A", "B", "C"])
		>>> s.str.extractall("[ab](\d)")
		         0
		  match
		A 0      1
		  1      2
		B 0      1
		
		Capture group names are used for column names of the result.
		
		>>> s.str.extractall("[ab](?P<digit>\d)")
		        digit
		  match
		A 0         1
		  1         2
		B 0         1
		
		A pattern with two groups will return a DataFrame with two columns.
		
		>>> s.str.extractall("(?P<letter>[ab])(?P<digit>\d)")
		        letter digit
		  match
		A 0          a     1
		  1          a     2
		B 0          b     1
		
		Optional groups that do not match are NaN in the result.
		
		>>> s.str.extractall("(?P<letter>[ab])?(?P<digit>\d)")
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
		Find all occurrences of pattern or regular expression in the
		Series/Index. Equivalent to :func:`re.findall`.
		
		Parameters
		----------
		pat : string
		    Pattern or regular expression
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		
		Returns
		-------
		matches : Series/Index of lists
		
		See Also
		--------
		extractall : returns DataFrame with one column per capture group
	**/
	static public function str_findall(arr:Dynamic, pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Extract element from lists, tuples, or strings in each element in the
		Series/Index.
		
		Parameters
		----------
		i : int
		    Integer index (location)
		
		Returns
		-------
		items : Series/Index of objects
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
		
		Examples
		--------
		>>> Series(['a|b', 'a', 'a|c']).str.get_dummies()
		   a  b  c
		0  1  1  0
		1  1  0  0
		2  1  0  1
		
		>>> Series(['a|b', np.nan, 'a|c']).str.get_dummies()
		   a  b  c
		0  1  1  0
		1  0  0  0
		2  1  0  1
		
		See Also
		--------
		pandas.get_dummies
	**/
	static public function str_get_dummies(arr:Dynamic, ?sep:Dynamic):pandas.DataFrame;
	static public function str_index(arr:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Join lists contained as elements in the Series/Index with
		passed delimiter. Equivalent to :meth:`str.join`.
		
		Parameters
		----------
		sep : string
		    Delimiter
		
		Returns
		-------
		joined : Series/Index of objects
	**/
	static public function str_join(arr:Dynamic, sep:Dynamic):Dynamic;
	/**
		Deprecated: Find groups in each string in the Series/Index
		using passed regular expression.
		If as_indexer=True, determine if each string matches a regular expression.
		
		Parameters
		----------
		pat : string
		    Character sequence or regular expression
		case : boolean, default True
		    If True, case sensitive
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		na : default NaN, fill value for missing values.
		as_indexer : False, by default, gives deprecated behavior better achieved
		    using str_extract. True return boolean indexer.
		
		Returns
		-------
		Series/array of boolean values
		    if as_indexer=True
		Series/Index of tuples
		    if as_indexer=False, default but deprecated
		
		See Also
		--------
		contains : analogous, but less strict, relying on re.search instead of
		    re.match
		extract : now preferred to the deprecated usage of match (as_indexer=False)
		
		Notes
		-----
		To extract matched groups, which is the deprecated behavior of match, use
		str.extract.
	**/
	static public function str_match(arr:Dynamic, pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?as_indexer:Dynamic):Dynamic;
	/**
		Pad strings in the Series/Index with an additional character to
		specified side.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with spaces
		side : {'left', 'right', 'both'}, default 'left'
		fillchar : str
		    Additional character for filling, default is whitespace
		
		Returns
		-------
		padded : Series/Index of objects
	**/
	static public function str_pad(arr:Dynamic, width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Duplicate each string in the Series/Index by indicated number
		of times.
		
		Parameters
		----------
		repeats : int or array
		    Same value for all (int) or different value per (array)
		
		Returns
		-------
		repeated : Series/Index of objects
	**/
	static public function str_repeat(arr:Dynamic, repeats:Dynamic):Dynamic;
	/**
		Replace occurrences of pattern/regex in the Series/Index with
		some other string. Equivalent to :meth:`str.replace` or
		:func:`re.sub`.
		
		Parameters
		----------
		pat : string
		    Character sequence or regular expression
		repl : string
		    Replacement sequence
		n : int, default -1 (all)
		    Number of replacements to make from start
		case : boolean, default True
		    If True, case sensitive
		flags : int, default 0 (no flags)
		    re module flags, e.g. re.IGNORECASE
		
		Returns
		-------
		replaced : Series/Index of objects
	**/
	static public function str_replace(arr:Dynamic, pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Split each string in the Series/Index by the given delimiter
		string, starting at the end of the string and working to the front.
		Equivalent to :meth:`str.rsplit`.
		
		.. versionadded:: 0.16.2
		
		Parameters
		----------
		pat : string, default None
		    Separator to split on. If None, splits on whitespace
		n : int, default -1 (all)
		    None, 0 and -1 will be interpreted as return all splits
		expand : bool, default False
		    * If True, return DataFrame/MultiIndex expanding dimensionality.
		    * If False, return Series/Index.
		
		Returns
		-------
		split : Series/Index or DataFrame/MultiIndex of objects
	**/
	static public function str_rsplit(arr:Dynamic, ?pat:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Slice substrings from each element in the Series/Index
		
		Parameters
		----------
		start : int or None
		stop : int or None
		step : int or None
		
		Returns
		-------
		sliced : Series/Index of objects
	**/
	static public function str_slice(arr:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Replace a slice of each string in the Series/Index with another
		string.
		
		Parameters
		----------
		start : int or None
		stop : int or None
		repl : str or None
		    String for replacement
		
		Returns
		-------
		replaced : Series/Index of objects
	**/
	static public function str_slice_replace(arr:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	/**
		Split each string (a la re.split) in the Series/Index by given
		pattern, propagating NA values. Equivalent to :meth:`str.split`.
		
		Parameters
		----------
		pat : string, default None
		    String or regular expression to split on. If None, splits on whitespace
		n : int, default -1 (all)
		    None, 0 and -1 will be interpreted as return all splits
		expand : bool, default False
		    * If True, return DataFrame/MultiIndex expanding dimensionality.
		    * If False, return Series/Index.
		
		    .. versionadded:: 0.16.1
		return_type : deprecated, use `expand`
		
		Returns
		-------
		split : Series/Index or DataFrame/MultiIndex of objects
	**/
	static public function str_split(arr:Dynamic, ?pat:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return boolean Series/``array`` indicating whether each string in the
		Series/Index starts with passed pattern. Equivalent to
		:meth:`str.startswith`.
		
		Parameters
		----------
		pat : string
		    Character sequence
		na : bool, default NaN
		
		Returns
		-------
		startswith : Series/array of boolean values
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
		
		Parameters
		----------
		arr : ndarray
		    Input array
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indicies are filed with fill_value
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
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
}