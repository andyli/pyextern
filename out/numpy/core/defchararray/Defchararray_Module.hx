/* This file is generated, do not edit! */
package numpy.core.defchararray;
@:pythonImport("numpy.core.defchararray") extern class Defchararray_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for delegating arguments to Python string
		functions.
		
		Many of the Python string operations that have optional arguments
		do not use 'None' to indicate a default value.  In these cases,
		we need to remove all `None` arguments, and those following them.
	**/
	static public function _clean_args(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper function that returns the number of characters per field in
		a string or unicode array.  This is to abstract out the fact that
		for a unicode array this is itemsize / 4.
	**/
	static public function _get_num_chars(a:Dynamic):Dynamic;
	static public var _globalvar : Dynamic;
	/**
		Return the number of items in a container.
	**/
	static public function _len(obj:Dynamic):Dynamic;
	/**
		Helper function to cast a result back into a string or unicode array
		if an object array must be used as an intermediary.
	**/
	static public function _to_string_or_unicode_array(result:Dynamic):Dynamic;
	/**
		Helper function for determining the output type of some string
		operations.
		
		For an operation on two ndarrays, if at least one is unicode, the
		result should be unicode.
	**/
	static public function _use_unicode(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _vec_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return element-wise string concatenation for two arrays of str or unicode.
		
		Arrays `x1` and `x2` must have the same shape.
		
		Parameters
		----------
		x1 : array_like of str or unicode
		    Input array.
		x2 : array_like of str or unicode
		    Input array.
		
		Returns
		-------
		add : ndarray
		    Output array of `string_` or `unicode_`, depending on input types
		    of the same shape as `x1` and `x2`.
	**/
	static public function add(x1:Dynamic, x2:Dynamic):numpy.Ndarray;
	/**
		Create a `chararray`.
		
		.. note::
		   This class is provided for numarray backward-compatibility.
		   New code (not concerned with numarray compatibility) should use
		   arrays of type `string_` or `unicode_` and use the free functions
		   in :mod:`numpy.char <numpy.core.defchararray>` for fast
		   vectorized string operations instead.
		
		Versus a regular NumPy array of type `str` or `unicode`, this
		class adds the following functionality:
		
		  1) values automatically have whitespace removed from the end
		     when indexed
		
		  2) comparison operators automatically remove whitespace from the
		     end when comparing values
		
		  3) vectorized string operations are provided as methods
		     (e.g. `str.endswith`) and infix operators (e.g. ``+, *, %``)
		
		Parameters
		----------
		obj : array of str or unicode-like
		
		itemsize : int, optional
		    `itemsize` is the number of characters per scalar in the
		    resulting array.  If `itemsize` is None, and `obj` is an
		    object array or a Python list, the `itemsize` will be
		    automatically determined.  If `itemsize` is provided and `obj`
		    is of type str or unicode, then the `obj` string will be
		    chunked into `itemsize` pieces.
		
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`itemsize`, unicode, `order`, etc.).
		
		unicode : bool, optional
		    When true, the resulting `chararray` can contain Unicode
		    characters, when false only 8-bit characters.  If unicode is
		    `None` and `obj` is one of the following:
		
		      - a `chararray`,
		      - an ndarray of type `str` or `unicode`
		      - a Python str or unicode object,
		
		    then the unicode setting of the output array will be
		    automatically determined.
		
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C' (default), then the
		    array will be in C-contiguous order (last-index varies the
		    fastest).  If order is 'F', then the returned array
		    will be in Fortran-contiguous order (first-index varies the
		    fastest).  If order is 'A', then the returned array may
		    be in any order (either C-, Fortran-contiguous, or even
		    discontiguous).
	**/
	static public function array(obj:Dynamic, ?itemsize:Dynamic, ?copy:Dynamic, ?unicode:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to a `chararray`, copying the data only if
		necessary.
		
		Versus a regular NumPy array of type `str` or `unicode`, this
		class adds the following functionality:
		
		  1) values automatically have whitespace removed from the end
		     when indexed
		
		  2) comparison operators automatically remove whitespace from the
		     end when comparing values
		
		  3) vectorized string operations are provided as methods
		     (e.g. `str.endswith`) and infix operators (e.g. ``+``, ``*``,``%``)
		
		Parameters
		----------
		obj : array of str or unicode-like
		
		itemsize : int, optional
		    `itemsize` is the number of characters per scalar in the
		    resulting array.  If `itemsize` is None, and `obj` is an
		    object array or a Python list, the `itemsize` will be
		    automatically determined.  If `itemsize` is provided and `obj`
		    is of type str or unicode, then the `obj` string will be
		    chunked into `itemsize` pieces.
		
		unicode : bool, optional
		    When true, the resulting `chararray` can contain Unicode
		    characters, when false only 8-bit characters.  If unicode is
		    `None` and `obj` is one of the following:
		
		      - a `chararray`,
		      - an ndarray of type `str` or 'unicode`
		      - a Python str or unicode object,
		
		    then the unicode setting of the output array will be
		    automatically determined.
		
		order : {'C', 'F'}, optional
		    Specify the order of the array.  If order is 'C' (default), then the
		    array will be in C-contiguous order (last-index varies the
		    fastest).  If order is 'F', then the returned array
		    will be in Fortran-contiguous order (first-index varies the
		    fastest).
	**/
	static public function asarray(obj:Dynamic, ?itemsize:Dynamic, ?unicode:Dynamic, ?order:Dynamic):Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	/**
		Return a copy of `a` with only the first character of each element
		capitalized.
		
		Calls `str.capitalize` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		    Input array of strings to capitalize.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input
		    types
		
		See also
		--------
		str.capitalize
		
		Examples
		--------
		>>> c = np.array(['a1b2','1b2a','b2a1','2a1b'],'S4'); c
		array(['a1b2', '1b2a', 'b2a1', '2a1b'],
		    dtype='|S4')
		>>> np.char.capitalize(c)
		array(['A1b2', '1b2a', 'B2a1', '2a1b'],
		    dtype='|S4')
	**/
	static public function capitalize(a:Dynamic):numpy.Ndarray;
	/**
		Return a copy of `a` with its elements centered in a string of
		length `width`.
		
		Calls `str.center` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		width : int
		    The length of the resulting strings
		fillchar : str or unicode, optional
		    The padding character to use (default is space).
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input
		    types
		
		See also
		--------
		str.center
	**/
	static public function center(a:Dynamic, width:Dynamic, ?fillchar:Dynamic):numpy.Ndarray;
	static public function compare_chararrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an array with the number of non-overlapping occurrences of
		substring `sub` in the range [`start`, `end`].
		
		Calls `str.count` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		sub : str or unicode
		   The substring to search for.
		
		start, end : int, optional
		   Optional arguments `start` and `end` are interpreted as slice
		   notation to specify the range in which to count.
		
		Returns
		-------
		out : ndarray
		    Output array of ints.
		
		See also
		--------
		str.count
		
		Examples
		--------
		>>> c = np.array(['aAaAaA', '  aA  ', 'abBABba'])
		>>> c
		array(['aAaAaA', '  aA  ', 'abBABba'],
		    dtype='|S7')
		>>> np.char.count(c, 'A')
		array([3, 1, 1])
		>>> np.char.count(c, 'aA')
		array([3, 1, 0])
		>>> np.char.count(c, 'A', start=1, end=4)
		array([2, 1, 1])
		>>> np.char.count(c, 'A', start=1, end=3)
		array([1, 0, 0])
	**/
	static public function count(a:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Calls `str.decode` element-wise.
		
		The set of available codecs comes from the Python standard library,
		and may be extended at runtime.  For more information, see the
		:mod:`codecs` module.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		encoding : str, optional
		   The name of an encoding
		
		errors : str, optional
		   Specifies how to handle encoding errors
		
		Returns
		-------
		out : ndarray
		
		See also
		--------
		str.decode
		
		Notes
		-----
		The type of the result will depend on the encoding specified.
		
		Examples
		--------
		>>> c = np.array(['aAaAaA', '  aA  ', 'abBABba'])
		>>> c
		array(['aAaAaA', '  aA  ', 'abBABba'],
		    dtype='|S7')
		>>> np.char.encode(c, encoding='cp037')
		array(['\x81\xc1\x81\xc1\x81\xc1', '@@\x81\xc1@@',
		    '\x81\x82\xc2\xc1\xc2\x82\x81'],
		    dtype='|S7')
	**/
	static public function decode(a:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):numpy.Ndarray;
	static public var division : Dynamic;
	/**
		Calls `str.encode` element-wise.
		
		The set of available codecs comes from the Python standard library,
		and may be extended at runtime. For more information, see the codecs
		module.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		encoding : str, optional
		   The name of an encoding
		
		errors : str, optional
		   Specifies how to handle encoding errors
		
		Returns
		-------
		out : ndarray
		
		See also
		--------
		str.encode
		
		Notes
		-----
		The type of the result will depend on the encoding specified.
	**/
	static public function encode(a:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):numpy.Ndarray;
	/**
		Returns a boolean array which is `True` where the string element
		in `a` ends with `suffix`, otherwise `False`.
		
		Calls `str.endswith` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		suffix : str
		
		start, end : int, optional
		    With optional `start`, test beginning at that position. With
		    optional `end`, stop comparing at that position.
		
		Returns
		-------
		out : ndarray
		    Outputs an array of bools.
		
		See also
		--------
		str.endswith
		
		Examples
		--------
		>>> s = np.array(['foo', 'bar'])
		>>> s[0] = 'foo'
		>>> s[1] = 'bar'
		>>> s
		array(['foo', 'bar'],
		    dtype='|S3')
		>>> np.char.endswith(s, 'ar')
		array([False,  True], dtype=bool)
		>>> np.char.endswith(s, 'a', start=1, end=2)
		array([False,  True], dtype=bool)
	**/
	static public function endswith(a:Dynamic, suffix:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Return (x1 == x2) element-wise.
		
		Unlike `numpy.equal`, this comparison is performed by first
		stripping whitespace characters from the end of the string.  This
		behavior is provided for backward-compatibility with numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		not_equal, greater_equal, less_equal, greater, less
	**/
	static public function equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Return a copy of each string element where all tab characters are
		replaced by one or more spaces.
		
		Calls `str.expandtabs` element-wise.
		
		Return a copy of each string element where all tab characters are
		replaced by one or more spaces, depending on the current column
		and the given `tabsize`. The column number is reset to zero after
		each newline occurring in the string. This doesn't understand other
		non-printing characters or escape sequences.
		
		Parameters
		----------
		a : array_like of str or unicode
		    Input array
		tabsize : int, optional
		    Replace tabs with `tabsize` number of spaces.  If not given defaults
		    to 8 spaces.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.expandtabs
	**/
	static public function expandtabs(a:Dynamic, ?tabsize:Dynamic):numpy.Ndarray;
	/**
		For each element, return the lowest index in the string where
		substring `sub` is found.
		
		Calls `str.find` element-wise.
		
		For each element, return the lowest index in the string where
		substring `sub` is found, such that `sub` is contained in the
		range [`start`, `end`].
		
		Parameters
		----------
		a : array_like of str or unicode
		
		sub : str or unicode
		
		start, end : int, optional
		    Optional arguments `start` and `end` are interpreted as in
		    slice notation.
		
		Returns
		-------
		out : ndarray or int
		    Output array of ints.  Returns -1 if `sub` is not found.
		
		See also
		--------
		str.find
	**/
	static public function find(a:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Return (x1 > x2) element-wise.
		
		Unlike `numpy.greater`, this comparison is performed by first
		stripping whitespace characters from the end of the string.  This
		behavior is provided for backward-compatibility with numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		equal, not_equal, greater_equal, less_equal, less
	**/
	static public function greater(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Return (x1 >= x2) element-wise.
		
		Unlike `numpy.greater_equal`, this comparison is performed by
		first stripping whitespace characters from the end of the string.
		This behavior is provided for backward-compatibility with
		numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		equal, not_equal, less_equal, greater, less
	**/
	static public function greater_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Like `find`, but raises `ValueError` when the substring is not found.
		
		Calls `str.index` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		sub : str or unicode
		
		start, end : int, optional
		
		Returns
		-------
		out : ndarray
		    Output array of ints.  Returns -1 if `sub` is not found.
		
		See also
		--------
		find, str.find
	**/
	static public function index(a:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Returns true for each element if all characters in the string are
		alphanumeric and there is at least one character, false otherwise.
		
		Calls `str.isalnum` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.isalnum
	**/
	static public function isalnum(a:Dynamic):numpy.Ndarray;
	/**
		Returns true for each element if all characters in the string are
		alphabetic and there is at least one character, false otherwise.
		
		Calls `str.isalpha` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.isalpha
	**/
	static public function isalpha(a:Dynamic):numpy.Ndarray;
	/**
		For each element, return True if there are only decimal
		characters in the element.
		
		Calls `unicode.isdecimal` element-wise.
		
		Decimal characters include digit characters, and all characters
		that that can be used to form decimal-radix numbers,
		e.g. ``U+0660, ARABIC-INDIC DIGIT ZERO``.
		
		Parameters
		----------
		a : array_like, unicode
		    Input array.
		
		Returns
		-------
		out : ndarray, bool
		    Array of booleans identical in shape to `a`.
		
		See also
		--------
		unicode.isdecimal
	**/
	static public function isdecimal(a:Dynamic):Dynamic;
	/**
		Returns true for each element if all characters in the string are
		digits and there is at least one character, false otherwise.
		
		Calls `str.isdigit` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.isdigit
	**/
	static public function isdigit(a:Dynamic):numpy.Ndarray;
	/**
		Returns true for each element if all cased characters in the
		string are lowercase and there is at least one cased character,
		false otherwise.
		
		Calls `str.islower` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.islower
	**/
	static public function islower(a:Dynamic):numpy.Ndarray;
	/**
		For each element, return True if there are only numeric
		characters in the element.
		
		Calls `unicode.isnumeric` element-wise.
		
		Numeric characters include digit characters, and all characters
		that have the Unicode numeric value property, e.g. ``U+2155,
		VULGAR FRACTION ONE FIFTH``.
		
		Parameters
		----------
		a : array_like, unicode
		    Input array.
		
		Returns
		-------
		out : ndarray, bool
		    Array of booleans of same shape as `a`.
		
		See also
		--------
		unicode.isnumeric
	**/
	static public function isnumeric(a:Dynamic):Dynamic;
	/**
		Returns true for each element if there are only whitespace
		characters in the string and there is at least one character,
		false otherwise.
		
		Calls `str.isspace` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.isspace
	**/
	static public function isspace(a:Dynamic):numpy.Ndarray;
	/**
		Returns true for each element if the element is a titlecased
		string and there is at least one character, false otherwise.
		
		Call `str.istitle` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.istitle
	**/
	static public function istitle(a:Dynamic):numpy.Ndarray;
	/**
		Returns true for each element if all cased characters in the
		string are uppercase and there is at least one character, false
		otherwise.
		
		Call `str.isupper` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of bools
		
		See also
		--------
		str.isupper
	**/
	static public function isupper(a:Dynamic):numpy.Ndarray;
	/**
		Return a string which is the concatenation of the strings in the
		sequence `seq`.
		
		Calls `str.join` element-wise.
		
		Parameters
		----------
		sep : array_like of str or unicode
		seq : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input types
		
		See also
		--------
		str.join
	**/
	static public function join(sep:Dynamic, seq:Dynamic):numpy.Ndarray;
	/**
		Return (x1 < x2) element-wise.
		
		Unlike `numpy.greater`, this comparison is performed by first
		stripping whitespace characters from the end of the string.  This
		behavior is provided for backward-compatibility with numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		equal, not_equal, greater_equal, less_equal, greater
	**/
	static public function less(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Return (x1 <= x2) element-wise.
		
		Unlike `numpy.less_equal`, this comparison is performed by first
		stripping whitespace characters from the end of the string.  This
		behavior is provided for backward-compatibility with numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		equal, not_equal, greater_equal, greater, less
	**/
	static public function less_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Return an array with the elements of `a` left-justified in a
		string of length `width`.
		
		Calls `str.ljust` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		width : int
		    The length of the resulting strings
		fillchar : str or unicode, optional
		    The character to use for padding
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.ljust
	**/
	static public function ljust(a:Dynamic, width:Dynamic, ?fillchar:Dynamic):numpy.Ndarray;
	/**
		Return an array with the elements converted to lowercase.
		
		Call `str.lower` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.lower
		
		Examples
		--------
		>>> c = np.array(['A1B C', '1BCA', 'BCA1']); c
		array(['A1B C', '1BCA', 'BCA1'],
		      dtype='|S5')
		>>> np.char.lower(c)
		array(['a1b c', '1bca', 'bca1'],
		      dtype='|S5')
	**/
	static public function lower(a:Dynamic):Dynamic;
	/**
		For each element in `a`, return a copy with the leading characters
		removed.
		
		Calls `str.lstrip` element-wise.
		
		Parameters
		----------
		a : array-like, {str, unicode}
		    Input array.
		
		chars : {str, unicode}, optional
		    The `chars` argument is a string specifying the set of
		    characters to be removed. If omitted or None, the `chars`
		    argument defaults to removing whitespace. The `chars` argument
		    is not a prefix; rather, all combinations of its values are
		    stripped.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.lstrip
		
		Examples
		--------
		>>> c = np.array(['aAaAaA', '  aA  ', 'abBABba'])
		>>> c
		array(['aAaAaA', '  aA  ', 'abBABba'],
		    dtype='|S7')
		
		The 'a' variable is unstripped from c[1] because whitespace leading.
		
		>>> np.char.lstrip(c, 'a')
		array(['AaAaA', '  aA  ', 'bBABba'],
		    dtype='|S7')
		
		
		>>> np.char.lstrip(c, 'A') # leaves c unchanged
		array(['aAaAaA', '  aA  ', 'abBABba'],
		    dtype='|S7')
		>>> (np.char.lstrip(c, ' ') == np.char.lstrip(c, '')).all()
		... # XXX: is this a regression? this line now returns False
		... # np.char.lstrip(c,'') does not modify c at all.
		True
		>>> (np.char.lstrip(c, ' ') == np.char.lstrip(c, None)).all()
		True
	**/
	static public function lstrip(a:Dynamic, ?chars:Dynamic):Dynamic;
	/**
		Return (a % i), that is pre-Python 2.6 string formatting
		(iterpolation), element-wise for a pair of array_likes of str
		or unicode.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		values : array_like of values
		   These values will be element-wise interpolated into the string.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input types
		
		See also
		--------
		str.__mod__
	**/
	static public function mod(a:Dynamic, values:Dynamic):numpy.Ndarray;
	/**
		Return (a * i), that is string multiple concatenation,
		element-wise.
		
		Values in `i` of less than 0 are treated as 0 (which yields an
		empty string).
		
		Parameters
		----------
		a : array_like of str or unicode
		
		i : array_like of ints
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input types
	**/
	static public function multiply(a:Dynamic, i:Dynamic):numpy.Ndarray;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, full, full_like
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function narray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return (x1 != x2) element-wise.
		
		Unlike `numpy.not_equal`, this comparison is performed by first
		stripping whitespace characters from the end of the string.  This
		behavior is provided for backward-compatibility with numarray.
		
		Parameters
		----------
		x1, x2 : array_like of str or unicode
		    Input arrays of the same shape.
		
		Returns
		-------
		out : ndarray or bool
		    Output array of bools, or a single bool if x1 and x2 are scalars.
		
		See Also
		--------
		equal, greater_equal, less_equal, greater, less
	**/
	static public function not_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Partition each element in `a` around `sep`.
		
		Calls `str.partition` element-wise.
		
		For each element in `a`, split the element as the first
		occurrence of `sep`, and return 3 strings containing the part
		before the separator, the separator itself, and the part after
		the separator. If the separator is not found, return 3 strings
		containing the string itself, followed by two empty strings.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array
		sep : {str, unicode}
		    Separator to split each string element in `a`.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type.
		    The output array will have an extra dimension with 3
		    elements per input element.
		
		See also
		--------
		str.partition
	**/
	static public function partition(a:Dynamic, sep:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		For each element in `a`, return a copy of the string with all
		occurrences of substring `old` replaced by `new`.
		
		Calls `str.replace` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		old, new : str or unicode
		
		count : int, optional
		    If the optional argument `count` is given, only the first
		    `count` occurrences are replaced.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.replace
	**/
	static public function replace(a:Dynamic, old:Dynamic, _new:Dynamic, ?count:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return the highest index in the string
		where substring `sub` is found, such that `sub` is contained
		within [`start`, `end`].
		
		Calls `str.rfind` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		sub : str or unicode
		
		start, end : int, optional
		    Optional arguments `start` and `end` are interpreted as in
		    slice notation.
		
		Returns
		-------
		out : ndarray
		   Output array of ints.  Return -1 on failure.
		
		See also
		--------
		str.rfind
	**/
	static public function rfind(a:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Like `rfind`, but raises `ValueError` when the substring `sub` is
		not found.
		
		Calls `str.rindex` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		sub : str or unicode
		
		start, end : int, optional
		
		Returns
		-------
		out : ndarray
		   Output array of ints.
		
		See also
		--------
		rfind, str.rindex
	**/
	static public function rindex(a:Dynamic, sub:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Return an array with the elements of `a` right-justified in a
		string of length `width`.
		
		Calls `str.rjust` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		width : int
		    The length of the resulting strings
		fillchar : str or unicode, optional
		    The character to use for padding
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.rjust
	**/
	static public function rjust(a:Dynamic, width:Dynamic, ?fillchar:Dynamic):numpy.Ndarray;
	/**
		Partition (split) each element around the right-most separator.
		
		Calls `str.rpartition` element-wise.
		
		For each element in `a`, split the element as the last
		occurrence of `sep`, and return 3 strings containing the part
		before the separator, the separator itself, and the part after
		the separator. If the separator is not found, return 3 strings
		containing the string itself, followed by two empty strings.
		
		Parameters
		----------
		a : array_like of str or unicode
		    Input array
		sep : str or unicode
		    Right-most separator to split each element in array.
		
		Returns
		-------
		out : ndarray
		    Output array of string or unicode, depending on input
		    type.  The output array will have an extra dimension with
		    3 elements per input element.
		
		See also
		--------
		str.rpartition
	**/
	static public function rpartition(a:Dynamic, sep:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a list of the words in the
		string, using `sep` as the delimiter string.
		
		Calls `str.rsplit` element-wise.
		
		Except for splitting from the right, `rsplit`
		behaves like `split`.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		sep : str or unicode, optional
		    If `sep` is not specified or `None`, any whitespace string
		    is a separator.
		maxsplit : int, optional
		    If `maxsplit` is given, at most `maxsplit` splits are done,
		    the rightmost ones.
		
		Returns
		-------
		out : ndarray
		   Array of list objects
		
		See also
		--------
		str.rsplit, split
	**/
	static public function rsplit(a:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a copy with the trailing
		characters removed.
		
		Calls `str.rstrip` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		chars : str or unicode, optional
		   The `chars` argument is a string specifying the set of
		   characters to be removed. If omitted or None, the `chars`
		   argument defaults to removing whitespace. The `chars` argument
		   is not a suffix; rather, all combinations of its values are
		   stripped.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.rstrip
		
		Examples
		--------
		>>> c = np.array(['aAaAaA', 'abBABba'], dtype='S7'); c
		array(['aAaAaA', 'abBABba'],
		    dtype='|S7')
		>>> np.char.rstrip(c, 'a')
		array(['aAaAaA', 'abBABb'],
		    dtype='|S7')
		>>> np.char.rstrip(c, 'A')
		array(['aAaAa', 'abBABba'],
		    dtype='|S7')
	**/
	static public function rstrip(a:Dynamic, ?chars:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a list of the words in the
		string, using `sep` as the delimiter string.
		
		Calls `str.split` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		sep : str or unicode, optional
		   If `sep` is not specified or `None`, any whitespace string is a
		   separator.
		
		maxsplit : int, optional
		    If `maxsplit` is given, at most `maxsplit` splits are done.
		
		Returns
		-------
		out : ndarray
		    Array of list objects
		
		See also
		--------
		str.split, rsplit
	**/
	static public function split(a:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a list of the lines in the
		element, breaking at line boundaries.
		
		Calls `str.splitlines` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		keepends : bool, optional
		    Line breaks are not included in the resulting list unless
		    keepends is given and true.
		
		Returns
		-------
		out : ndarray
		    Array of list objects
		
		See also
		--------
		str.splitlines
	**/
	static public function splitlines(a:Dynamic, ?keepends:Dynamic):numpy.Ndarray;
	/**
		Returns a boolean array which is `True` where the string element
		in `a` starts with `prefix`, otherwise `False`.
		
		Calls `str.startswith` element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		prefix : str
		
		start, end : int, optional
		    With optional `start`, test beginning at that position. With
		    optional `end`, stop comparing at that position.
		
		Returns
		-------
		out : ndarray
		    Array of booleans
		
		See also
		--------
		str.startswith
	**/
	static public function startswith(a:Dynamic, prefix:Dynamic, ?start:Dynamic, ?end:Dynamic):numpy.Ndarray;
	/**
		Return len(a) element-wise.
		
		Parameters
		----------
		a : array_like of str or unicode
		
		Returns
		-------
		out : ndarray
		    Output array of integers
		
		See also
		--------
		__builtin__.len
	**/
	static public function str_len(a:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a copy with the leading and
		trailing characters removed.
		
		Calls `str.strip` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		chars : str or unicode, optional
		   The `chars` argument is a string specifying the set of
		   characters to be removed. If omitted or None, the `chars`
		   argument defaults to removing whitespace. The `chars` argument
		   is not a prefix or suffix; rather, all combinations of its
		   values are stripped.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.strip
		
		Examples
		--------
		>>> c = np.array(['aAaAaA', '  aA  ', 'abBABba'])
		>>> c
		array(['aAaAaA', '  aA  ', 'abBABba'],
		    dtype='|S7')
		>>> np.char.strip(c)
		array(['aAaAaA', 'aA', 'abBABba'],
		    dtype='|S7')
		>>> np.char.strip(c, 'a') # 'a' unstripped from c[1] because whitespace leads
		array(['AaAaA', '  aA  ', 'bBABb'],
		    dtype='|S7')
		>>> np.char.strip(c, 'A') # 'A' unstripped from c[1] because (unprinted) ws trails
		array(['aAaAa', '  aA  ', 'abBABba'],
		    dtype='|S7')
	**/
	static public function strip(a:Dynamic, ?chars:Dynamic):numpy.Ndarray;
	/**
		Return element-wise a copy of the string with
		uppercase characters converted to lowercase and vice versa.
		
		Calls `str.swapcase` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.swapcase
		
		Examples
		--------
		>>> c=np.array(['a1B c','1b Ca','b Ca1','cA1b'],'S5'); c
		array(['a1B c', '1b Ca', 'b Ca1', 'cA1b'],
		    dtype='|S5')
		>>> np.char.swapcase(c)
		array(['A1b C', '1B cA', 'B cA1', 'Ca1B'],
		    dtype='|S5')
	**/
	static public function swapcase(a:Dynamic):Dynamic;
	/**
		Return element-wise title cased version of string or unicode.
		
		Title case words start with uppercase characters, all remaining cased
		characters are lowercase.
		
		Calls `str.title` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.title
		
		Examples
		--------
		>>> c=np.array(['a1b c','1b ca','b ca1','ca1b'],'S5'); c
		array(['a1b c', '1b ca', 'b ca1', 'ca1b'],
		    dtype='|S5')
		>>> np.char.title(c)
		array(['A1B C', '1B Ca', 'B Ca1', 'Ca1B'],
		    dtype='|S5')
	**/
	static public function title(a:Dynamic):numpy.Ndarray;
	/**
		For each element in `a`, return a copy of the string where all
		characters occurring in the optional argument `deletechars` are
		removed, and the remaining characters have been mapped through the
		given translation table.
		
		Calls `str.translate` element-wise.
		
		Parameters
		----------
		a : array-like of str or unicode
		
		table : str of length 256
		
		deletechars : str
		
		Returns
		-------
		out : ndarray
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.translate
	**/
	static public function translate(a:Dynamic, table:Dynamic, ?deletechars:Dynamic):numpy.Ndarray;
	/**
		Return an array with the elements converted to uppercase.
		
		Calls `str.upper` element-wise.
		
		For 8-bit strings, this method is locale-dependent.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.upper
		
		Examples
		--------
		>>> c = np.array(['a1b c', '1bca', 'bca1']); c
		array(['a1b c', '1bca', 'bca1'],
		    dtype='|S5')
		>>> np.char.upper(c)
		array(['A1B C', '1BCA', 'BCA1'],
		    dtype='|S5')
	**/
	static public function upper(a:Dynamic):Dynamic;
	/**
		Return the numeric string left-filled with zeros
		
		Calls `str.zfill` element-wise.
		
		Parameters
		----------
		a : array_like, {str, unicode}
		    Input array.
		width : int
		    Width of string to left-fill elements in `a`.
		
		Returns
		-------
		out : ndarray, {str, unicode}
		    Output array of str or unicode, depending on input type
		
		See also
		--------
		str.zfill
	**/
	static public function zfill(a:Dynamic, width:Dynamic):Dynamic;
}