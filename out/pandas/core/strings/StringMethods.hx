/* This file is generated, do not edit! */
package pandas.core.strings;
@:pythonImport("pandas.core.strings", "StringMethods") extern class StringMethods {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Prevents setting additional attributes
	**/
	public function _freeze():Dynamic;
	public function _wrap_result(result:Dynamic, ?use_codes:Dynamic, ?name:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to be capitalized.
		Equivalent to :meth:`str.capitalize`.
		
		Returns
		-------
		converted : Series/Index of objects
	**/
	public function capitalize():Dynamic;
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
	public function cat(?others:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic):Dynamic;
	/**
		Filling left and right side of strings in the Series/Index with an
		additional character. Equivalent to :meth:`str.center`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``
		fillchar : str
		    Additional character for filling, default is whitespace
		
		Returns
		-------
		filled : Series/Index of objects
	**/
	public function center(width:Dynamic, ?fillchar:Dynamic):Dynamic;
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
	public function contains(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
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
	public function count(pat:Dynamic, ?flags:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function endswith(pat:Dynamic, ?na:Dynamic):Dynamic;
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
	public function extract(pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
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
	public function extractall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Return lowest indexes in each strings in the Series/Index
		where the substring is fully contained between [start:end].
		Return -1 on failure. Equivalent to standard :meth:`str.find`.
		
		Parameters
		----------
		sub : str
		    Substring being searched
		start : int
		    Left edge index
		end : int
		    Right edge index
		
		Returns
		-------
		found : Series/Index of integer values
		
		See Also
		--------
		rfind : Return highest indexes in each strings
	**/
	public function find(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
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
	public function findall(pat:Dynamic, ?flags:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function get(i:Dynamic):Dynamic;
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
	public function get_dummies(?sep:Dynamic):pandas.DataFrame;
	/**
		Return lowest indexes in each strings where the substring is
		fully contained between [start:end]. This is the same as
		``str.find`` except instead of returning -1, it raises a ValueError
		when the substring is not found. Equivalent to standard ``str.index``.
		
		Parameters
		----------
		sub : str
		    Substring being searched
		start : int
		    Left edge index
		end : int
		    Right edge index
		
		Returns
		-------
		found : Series/Index of objects
		
		See Also
		--------
		rindex : Return highest indexes in each strings
	**/
	public function index(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are alphanumeric. Equivalent to :meth:`str.isalnum`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isalnum():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are alphabetic. Equivalent to :meth:`str.isalpha`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isalpha():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are decimal. Equivalent to :meth:`str.isdecimal`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isdecimal():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are digits. Equivalent to :meth:`str.isdigit`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isdigit():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are lowercase. Equivalent to :meth:`str.islower`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function islower():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are numeric. Equivalent to :meth:`str.isnumeric`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isnumeric():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are whitespace. Equivalent to :meth:`str.isspace`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isspace():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are titlecase. Equivalent to :meth:`str.istitle`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function istitle():Dynamic;
	/**
		Check whether all characters in each string in the Series/Index
		are uppercase. Equivalent to :meth:`str.isupper`.
		
		Returns
		-------
		is : Series/array of boolean values
	**/
	public function isupper():Dynamic;
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
	public function join(sep:Dynamic):Dynamic;
	/**
		Compute length of each string in the Series/Index.
		
		Returns
		-------
		lengths : Series/Index of integer values
	**/
	public function len():Dynamic;
	/**
		Filling right side of strings in the Series/Index with an
		additional character. Equivalent to :meth:`str.ljust`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``
		fillchar : str
		    Additional character for filling, default is whitespace
		
		Returns
		-------
		filled : Series/Index of objects
	**/
	public function ljust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to lowercase.
		Equivalent to :meth:`str.lower`.
		
		Returns
		-------
		converted : Series/Index of objects
	**/
	public function lower():Dynamic;
	/**
		Strip whitespace (including newlines) from each string in the
		Series/Index from left side. Equivalent to :meth:`str.lstrip`.
		
		Returns
		-------
		stripped : Series/Index of objects
	**/
	public function lstrip(?to_strip:Dynamic):Dynamic;
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
		na : default NaN, fill value for missing values.
		as_indexer : DEPRECATED
		
		Returns
		-------
		Series/array of boolean values
		
		See Also
		--------
		contains : analogous, but less strict, relying on re.search instead of
		    re.match
		extract : extract matched groups
	**/
	public function match(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?as_indexer:Dynamic):Dynamic;
	/**
		Return the Unicode normal form for the strings in the Series/Index.
		For more information on the forms, see the
		:func:`unicodedata.normalize`.
		
		Parameters
		----------
		form : {'NFC', 'NFKC', 'NFD', 'NFKD'}
		    Unicode form
		
		Returns
		-------
		normalized : Series/Index of objects
	**/
	public function normalize(form:Dynamic):Dynamic;
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
	public function pad(width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Split the string at the first occurrence of `sep`, and return 3 elements
		containing the part before the separator, the separator itself,
		and the part after the separator.
		If the separator is not found, return 3 elements containing the string itself, followed by two empty strings.
		
		Parameters
		----------
		pat : string, default whitespace
		    String to split on.
		expand : bool, default True
		    * If True, return DataFrame/MultiIndex expanding dimensionality.
		    * If False, return Series/Index.
		
		Returns
		-------
		split : DataFrame/MultiIndex or Series/Index of objects
		
		See Also
		--------
		rpartition : Split the string at the last occurrence of `sep`
		
		Examples
		--------
		
		>>> s = Series(['A_B_C', 'D_E_F', 'X'])
		0    A_B_C
		1    D_E_F
		2        X
		dtype: object
		
		>>> s.str.partition('_')
		   0  1    2
		0  A  _  B_C
		1  D  _  E_F
		2  X
		
		>>> s.str.rpartition('_')
		     0  1  2
		0  A_B  _  C
		1  D_E  _  F
		2          X
	**/
	public function partition(?pat:Dynamic, ?expand:Dynamic):Dynamic;
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
	public function repeat(repeats:Dynamic):Dynamic;
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
		
		Returns
		-------
		replaced : Series/Index of objects
		
		Notes
		-----
		When `pat` is a compiled regex, all flags should be included in the
		compiled regex. Use of `case` or `flags` with a compiled regex will
		raise an error.
		
		Examples
		--------
		When `repl` is a string, every `pat` is replaced as with
		:meth:`str.replace`. NaN value(s) in the Series are left as is.
		
		>>> pd.Series(['foo', 'fuz', np.nan]).str.replace('f', 'b')
		0    boo
		1    buz
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
	public function replace(pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Return highest indexes in each strings in the Series/Index
		where the substring is fully contained between [start:end].
		Return -1 on failure. Equivalent to standard :meth:`str.rfind`.
		
		Parameters
		----------
		sub : str
		    Substring being searched
		start : int
		    Left edge index
		end : int
		    Right edge index
		
		Returns
		-------
		found : Series/Index of integer values
		
		See Also
		--------
		find : Return lowest indexes in each strings
	**/
	public function rfind(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Return highest indexes in each strings where the substring is
		fully contained between [start:end]. This is the same as
		``str.rfind`` except instead of returning -1, it raises a ValueError
		when the substring is not found. Equivalent to standard ``str.rindex``.
		
		Parameters
		----------
		sub : str
		    Substring being searched
		start : int
		    Left edge index
		end : int
		    Right edge index
		
		Returns
		-------
		found : Series/Index of objects
		
		See Also
		--------
		index : Return lowest indexes in each strings
	**/
	public function rindex(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Filling left side of strings in the Series/Index with an
		additional character. Equivalent to :meth:`str.rjust`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be filled
		    with ``fillchar``
		fillchar : str
		    Additional character for filling, default is whitespace
		
		Returns
		-------
		filled : Series/Index of objects
	**/
	public function rjust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Split the string at the last occurrence of `sep`, and return 3 elements
		containing the part before the separator, the separator itself,
		and the part after the separator.
		If the separator is not found, return 3 elements containing two empty strings, followed by the string itself.
		
		Parameters
		----------
		pat : string, default whitespace
		    String to split on.
		expand : bool, default True
		    * If True, return DataFrame/MultiIndex expanding dimensionality.
		    * If False, return Series/Index.
		
		Returns
		-------
		split : DataFrame/MultiIndex or Series/Index of objects
		
		See Also
		--------
		partition : Split the string at the first occurrence of `sep`
		
		Examples
		--------
		
		>>> s = Series(['A_B_C', 'D_E_F', 'X'])
		0    A_B_C
		1    D_E_F
		2        X
		dtype: object
		
		>>> s.str.partition('_')
		   0  1    2
		0  A  _  B_C
		1  D  _  E_F
		2  X
		
		>>> s.str.rpartition('_')
		     0  1  2
		0  A_B  _  C
		1  D_E  _  F
		2          X
	**/
	public function rpartition(?pat:Dynamic, ?expand:Dynamic):Dynamic;
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
	public function rsplit(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic):Dynamic;
	/**
		Strip whitespace (including newlines) from each string in the
		Series/Index from right side. Equivalent to :meth:`str.rstrip`.
		
		Returns
		-------
		stripped : Series/Index of objects
	**/
	public function rstrip(?to_strip:Dynamic):Dynamic;
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
	public function slice(?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
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
	public function slice_replace(?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
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
	public function split(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic):Dynamic;
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
	public function startswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	/**
		Strip whitespace (including newlines) from each string in the
		Series/Index from left and right sides. Equivalent to :meth:`str.strip`.
		
		Returns
		-------
		stripped : Series/Index of objects
	**/
	public function strip(?to_strip:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to be swapcased.
		Equivalent to :meth:`str.swapcase`.
		
		Returns
		-------
		converted : Series/Index of objects
	**/
	public function swapcase():Dynamic;
	/**
		Convert strings in the Series/Index to titlecase.
		Equivalent to :meth:`str.title`.
		
		Returns
		-------
		converted : Series/Index of objects
	**/
	public function title():Dynamic;
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
	public function translate(table:Dynamic, ?deletechars:Dynamic):Dynamic;
	/**
		Convert strings in the Series/Index to uppercase.
		Equivalent to :meth:`str.upper`.
		
		Returns
		-------
		converted : Series/Index of objects
	**/
	public function upper():Dynamic;
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
	public function wrap(width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Filling left side of strings in the Series/Index with 0.
		Equivalent to :meth:`str.zfill`.
		
		Parameters
		----------
		width : int
		    Minimum width of resulting string; additional characters will be
		    filled with 0
		
		Returns
		-------
		filled : Series/Index of objects
	**/
	public function zfill(width:Dynamic):Dynamic;
}