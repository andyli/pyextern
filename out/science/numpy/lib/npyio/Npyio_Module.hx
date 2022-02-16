/* This file is generated, do not edit! */
package numpy.lib.npyio;
@:pythonImport("numpy.lib.npyio") extern class Npyio_Module {
	static public var _CONVERTERS : Dynamic;
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
		Decode bytes from binary input streams.
		
		Defaults to decoding from 'latin1'. That differs from the behavior of
		np.compat.asunicode that decodes from 'ascii'.
		
		Parameters
		----------
		line : str or bytes
		     Line to be decoded.
		encoding : str
		     Encoding used to decode `line`.
		
		Returns
		-------
		decoded_line : str
	**/
	static public function _decode_line(line:Dynamic, ?encoding:Dynamic):Dynamic;
	static public function _floatconv(x:Dynamic):Dynamic;
	static public function _genfromtxt_dispatcher(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic, ?encoding:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Load data from a text file, with missing values handled as specified.
		
		Each line past the first `skip_header` lines is split at the `delimiter`
		character, and characters following the `comments` character are discarded.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : dtype, optional
		    Data type of the resulting array.
		    If None, the dtypes will be determined by the contents of each
		    column, individually.
		comments : str, optional
		    The character used to indicate the start of a comment.
		    All the characters occurring on a line after a comment are discarded.
		delimiter : str, int, or sequence, optional
		    The string used to separate values.  By default, any consecutive
		    whitespaces act as delimiter.  An integer or sequence of integers
		    can also be provided as width(s) of each field.
		skiprows : int, optional
		    `skiprows` was removed in numpy 1.10. Please use `skip_header` instead.
		skip_header : int, optional
		    The number of lines to skip at the beginning of the file.
		skip_footer : int, optional
		    The number of lines to skip at the end of the file.
		converters : variable, optional
		    The set of functions that convert the data of a column to a value.
		    The converters can also be used to provide a default value
		    for missing data: ``converters = {3: lambda s: float(s or 0)}``.
		missing : variable, optional
		    `missing` was removed in numpy 1.10. Please use `missing_values`
		    instead.
		missing_values : variable, optional
		    The set of strings corresponding to missing data.
		filling_values : variable, optional
		    The set of values to be used as default when the data are missing.
		usecols : sequence, optional
		    Which columns to read, with 0 being the first.  For example,
		    ``usecols = (1, 4, 5)`` will extract the 2nd, 5th and 6th columns.
		names : {None, True, str, sequence}, optional
		    If `names` is True, the field names are read from the first line after
		    the first `skip_header` lines. This line can optionally be preceded
		    by a comment delimiter. If `names` is a sequence or a single-string of
		    comma-separated names, the names will be used to define the field names
		    in a structured dtype. If `names` is None, the names of the dtype
		    fields will be used, if any.
		excludelist : sequence, optional
		    A list of names to exclude. This list is appended to the default list
		    ['return','file','print']. Excluded names are appended with an
		    underscore: for example, `file` would become `file_`.
		deletechars : str, optional
		    A string combining invalid characters that must be deleted from the
		    names.
		defaultfmt : str, optional
		    A format used to define default field names, such as "f%i" or "f_%02i".
		autostrip : bool, optional
		    Whether to automatically strip white spaces from the variables.
		replace_space : char, optional
		    Character(s) used in replacement of white spaces in the variable
		    names. By default, use a '_'.
		case_sensitive : {True, False, 'upper', 'lower'}, optional
		    If True, field names are case sensitive.
		    If False or 'upper', field names are converted to upper case.
		    If 'lower', field names are converted to lower case.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = genfromtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		usemask : bool, optional
		    If True, return a masked array.
		    If False, return a regular array.
		loose : bool, optional
		    If True, do not raise errors for invalid values.
		invalid_raise : bool, optional
		    If True, an exception is raised if an inconsistency is detected in the
		    number of columns.
		    If False, a warning is emitted and the offending lines are skipped.
		max_rows : int,  optional
		    The maximum number of rows to read. Must not be used with skip_footer
		    at the same time.  If given, the value must be at least 1. Default is
		    to read the entire file.
		
		    .. versionadded:: 1.10.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply when `fname` is
		    a file object.  The special value 'bytes' enables backward compatibility
		    workarounds that ensure that you receive byte arrays when possible
		    and passes latin1 encoded strings to converters. Override this value to
		    receive unicode arrays and pass strings as input to converters.  If set
		    to None the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Data read from the text file. If `usemask` is True, this is a
		    masked array.
		
		See Also
		--------
		numpy.loadtxt : equivalent function when no data is missing.
		
		Notes
		-----
		* When spaces are used as delimiters, or when no delimiter has been given
		  as input, there should not be any missing data between two fields.
		* When the variables are named (either by a flexible dtype or with `names`),
		  there must not be any header in the file (else a ValueError
		  exception is raised).
		* Individual values are not stripped of spaces by default.
		  When using a custom converter, make sure the function does remove spaces.
		
		References
		----------
		.. [1] NumPy User Guide, section `I/O with NumPy
		       <https://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
		
		Examples
		--------
		>>> from io import StringIO
		>>> import numpy as np
		
		Comma delimited file with mixed dtype
		
		>>> s = StringIO(u"1,1.3,abcde")
		>>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
		... ('mystring','S5')], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Using dtype = None
		
		>>> _ = s.seek(0) # needed for StringIO example only
		>>> data = np.genfromtxt(s, dtype=None,
		... names = ['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Specifying dtype and names
		
		>>> _ = s.seek(0)
		>>> data = np.genfromtxt(s, dtype="i8,f8,S5",
		... names=['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		An example with fixed-width columns
		
		>>> s = StringIO(u"11.3abcde")
		>>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
		...     delimiter=[1,3,5])
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', 'S5')])
		
		An example to show comments
		
		>>> f = StringIO('''
		... text,# of chars
		... hello world,11
		... numpy,5''')
		>>> np.genfromtxt(f, dtype='S12,S12', delimiter=',')
		array([(b'text', b''), (b'hello world', b'11'), (b'numpy', b'5')],
		  dtype=[('f0', 'S12'), ('f1', 'S12')])
	**/
	static public function _genfromtxt_with_like(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic, ?encoding:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Find the correct dtype converter. Adapted from matplotlib.
		
		Even when a lambda is returned, it is defined at the toplevel, to allow
		testing for equality and enabling optimization for single-type data.
	**/
	static public function _getconv(dtype:Dynamic):Dynamic;
	/**
		Check whether obj behaves like a string.
	**/
	static public function _is_string_like(obj:Dynamic):Dynamic;
	static public var _loadtxt_chunksize : Dynamic;
	static public function _loadtxt_dispatcher(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic, ?encoding:Dynamic, ?max_rows:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Unpack a structured data-type, and produce a packer function.
	**/
	static public function _loadtxt_flatten_dtype_internal(dt:Dynamic):Dynamic;
	/**
		Pack items into nested lists based on re-packing info.
	**/
	static public function _loadtxt_pack_items(packing:Dynamic, items:Dynamic):Dynamic;
	/**
		Load data from a text file.
		
		Each row in the text file must have the same number of values.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : data-type, optional
		    Data-type of the resulting array; default: float.  If this is a
		    structured data-type, the resulting array will be 1-dimensional, and
		    each row will be interpreted as an element of the array.  In this
		    case, the number of columns used must match the number of fields in
		    the data-type.
		comments : str or sequence of str, optional
		    The characters or list of characters used to indicate the start of a
		    comment. None implies no comments. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is '#'.
		delimiter : str, optional
		    The string used to separate values. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is whitespace.
		converters : dict, optional
		    A dictionary mapping column number to a function that will parse the
		    column string into the desired value.  E.g., if column 0 is a date
		    string: ``converters = {0: datestr2num}``.  Converters can also be
		    used to provide a default value for missing data (but see also
		    `genfromtxt`): ``converters = {3: lambda s: float(s.strip() or 0)}``.
		    Default: None.
		skiprows : int, optional
		    Skip the first `skiprows` lines, including comments; default: 0.
		usecols : int or sequence, optional
		    Which columns to read, with 0 being the first. For example,
		    ``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
		    The default, None, results in all columns being read.
		
		    .. versionchanged:: 1.11.0
		        When a single column has to be read it is possible to use
		        an integer instead of a tuple. E.g ``usecols = 3`` reads the
		        fourth column the same way as ``usecols = (3,)`` would.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		ndmin : int, optional
		    The returned array will have at least `ndmin` dimensions.
		    Otherwise mono-dimensional axes will be squeezed.
		    Legal values: 0 (default), 1 or 2.
		
		    .. versionadded:: 1.6.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		    The special value 'bytes' enables backward compatibility workarounds
		    that ensures you receive byte arrays as results if possible and passes
		    'latin1' encoded strings to converters. Override this value to receive
		    unicode arrays and pass strings as input to converters.  If set to None
		    the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		max_rows : int, optional
		    Read `max_rows` lines of content after `skiprows` lines. The default
		    is to read all the lines.
		
		    .. versionadded:: 1.16.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Data read from the text file.
		
		See Also
		--------
		load, fromstring, fromregex
		genfromtxt : Load data with missing values handled as specified.
		scipy.io.loadmat : reads MATLAB data files
		
		Notes
		-----
		This function aims to be a fast reader for simply formatted files.  The
		`genfromtxt` function provides more sophisticated handling of, e.g.,
		lines with missing values.
		
		.. versionadded:: 1.10.0
		
		The strings produced by the Python float.hex method can be used as
		input for floats.
		
		Examples
		--------
		>>> from io import StringIO   # StringIO behaves like a file object
		>>> c = StringIO("0 1\n2 3")
		>>> np.loadtxt(c)
		array([[0., 1.],
		       [2., 3.]])
		
		>>> d = StringIO("M 21 72\nF 35 58")
		>>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
		...                      'formats': ('S1', 'i4', 'f4')})
		array([(b'M', 21, 72.), (b'F', 35, 58.)],
		      dtype=[('gender', 'S1'), ('age', '<i4'), ('weight', '<f4')])
		
		>>> c = StringIO("1,0,2\n3,0,4")
		>>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
		>>> x
		array([1., 3.])
		>>> y
		array([2., 4.])
		
		This example shows how `converters` can be used to convert a field
		with a trailing minus sign into a negative number.
		
		>>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
		>>> def conv(fld):
		...     return -float(fld[:-1]) if fld.endswith(b'-') else float(fld)
		...
		>>> np.loadtxt(s, converters={0: conv, 1: conv})
		array([[ 10.01, -31.25],
		       [ 19.22,  64.31],
		       [-17.57,  63.94]])
	**/
	static public function _loadtxt_with_like(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic, ?encoding:Dynamic, ?max_rows:Dynamic, ?like:Dynamic):numpy.Ndarray;
	static public function _save_dispatcher(file:Dynamic, arr:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic):Dynamic;
	static public function _savetxt_dispatcher(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic, ?encoding:Dynamic):Dynamic;
	static public function _savez(file:Dynamic, args:Dynamic, kwds:Dynamic, compress:Dynamic, ?allow_pickle:Dynamic, ?pickle_kwargs:Dynamic):Dynamic;
	static public function _savez_compressed_dispatcher(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function _savez_dispatcher(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	static public function asunicode(s:Dynamic):Dynamic;
	/**
		Convenience function to create a `np.dtype` object.
		
		The function processes the input `dtype` and matches it with the given
		names.
		
		Parameters
		----------
		ndtype : var
		    Definition of the dtype. Can be any string or dictionary recognized
		    by the `np.dtype` function, or a sequence of types.
		names : str or sequence, optional
		    Sequence of strings to use as field names for a structured dtype.
		    For convenience, `names` can be a string of a comma-separated list
		    of names.
		defaultfmt : str, optional
		    Format string used to define missing names, such as ``"f%i"``
		    (default) or ``"fields_%02i"``.
		validationargs : optional
		    A series of optional arguments used to initialize a
		    `NameValidator`.
		
		Examples
		--------
		>>> np.lib._iotools.easy_dtype(float)
		dtype('float64')
		>>> np.lib._iotools.easy_dtype("i4, f8")
		dtype([('f0', '<i4'), ('f1', '<f8')])
		>>> np.lib._iotools.easy_dtype("i4, f8", defaultfmt="field_%03i")
		dtype([('field_000', '<i4'), ('field_001', '<f8')])
		
		>>> np.lib._iotools.easy_dtype((int, float, float), names="a,b,c")
		dtype([('a', '<i8'), ('b', '<f8'), ('c', '<f8')])
		>>> np.lib._iotools.easy_dtype(float, names="a,b,c")
		dtype([('a', '<f8'), ('b', '<f8'), ('c', '<f8')])
	**/
	static public function easy_dtype(ndtype:Dynamic, ?names:Dynamic, ?defaultfmt:Dynamic, ?validationargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unpack a structured data-type by collapsing nested fields and/or fields
		with a shape.
		
		Note that the field names are lost.
		
		Parameters
		----------
		ndtype : dtype
		    The datatype to collapse
		flatten_base : bool, optional
		   If True, transform a field with a shape into several fields. Default is
		   False.
		
		Examples
		--------
		>>> dt = np.dtype([('name', 'S4'), ('x', float), ('y', float),
		...                ('block', int, (2, 3))])
		>>> np.lib._iotools.flatten_dtype(dt)
		[dtype('S4'), dtype('float64'), dtype('float64'), dtype('int64')]
		>>> np.lib._iotools.flatten_dtype(dt, flatten_base=True)
		[dtype('S4'),
		 dtype('float64'),
		 dtype('float64'),
		 dtype('int64'),
		 dtype('int64'),
		 dtype('int64'),
		 dtype('int64'),
		 dtype('int64'),
		 dtype('int64')]
	**/
	static public function flatten_dtype(ndtype:Dynamic, ?flatten_base:Dynamic):Dynamic;
	/**
		Construct an array from a text file, using regular expression parsing.
		
		The returned array is always a structured array, and is constructed from
		all matches of the regular expression in the file. Groups in the regular
		expression are converted to fields of the structured array.
		
		Parameters
		----------
		file : path or file
		    Filename or file object to read.
		
		    .. versionchanged:: 1.22.0
		        Now accepts `os.PathLike` implementations.
		regexp : str or regexp
		    Regular expression used to parse the file.
		    Groups in the regular expression correspond to fields in the dtype.
		dtype : dtype or list of dtypes
		    Dtype for the structured array; must be a structured datatype.
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		output : ndarray
		    The output array, containing the part of the content of `file` that
		    was matched by `regexp`. `output` is always a structured array.
		
		Raises
		------
		TypeError
		    When `dtype` is not a valid dtype for a structured array.
		
		See Also
		--------
		fromstring, loadtxt
		
		Notes
		-----
		Dtypes for structured arrays can be specified in several forms, but all
		forms specify at least the data type and field name. For details see
		`basics.rec`.
		
		Examples
		--------
		>>> from io import StringIO
		>>> text = StringIO("1312 foo\n1534  bar\n444   qux")
		
		>>> regexp = r"(\d+)\s+(...)"  # match [digits, whitespace, anything]
		>>> output = np.fromregex(text, regexp,
		...                       [('num', np.int64), ('key', 'S3')])
		>>> output
		array([(1312, b'foo'), (1534, b'bar'), ( 444, b'qux')],
		      dtype=[('num', '<i8'), ('key', 'S3')])
		>>> output['num']
		array([1312, 1534,  444])
	**/
	static public function fromregex(file:Dynamic, regexp:Dynamic, dtype:Dynamic, ?encoding:Dynamic):numpy.Ndarray;
	/**
		Load data from a text file, with missing values handled as specified.
		
		Each line past the first `skip_header` lines is split at the `delimiter`
		character, and characters following the `comments` character are discarded.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : dtype, optional
		    Data type of the resulting array.
		    If None, the dtypes will be determined by the contents of each
		    column, individually.
		comments : str, optional
		    The character used to indicate the start of a comment.
		    All the characters occurring on a line after a comment are discarded.
		delimiter : str, int, or sequence, optional
		    The string used to separate values.  By default, any consecutive
		    whitespaces act as delimiter.  An integer or sequence of integers
		    can also be provided as width(s) of each field.
		skiprows : int, optional
		    `skiprows` was removed in numpy 1.10. Please use `skip_header` instead.
		skip_header : int, optional
		    The number of lines to skip at the beginning of the file.
		skip_footer : int, optional
		    The number of lines to skip at the end of the file.
		converters : variable, optional
		    The set of functions that convert the data of a column to a value.
		    The converters can also be used to provide a default value
		    for missing data: ``converters = {3: lambda s: float(s or 0)}``.
		missing : variable, optional
		    `missing` was removed in numpy 1.10. Please use `missing_values`
		    instead.
		missing_values : variable, optional
		    The set of strings corresponding to missing data.
		filling_values : variable, optional
		    The set of values to be used as default when the data are missing.
		usecols : sequence, optional
		    Which columns to read, with 0 being the first.  For example,
		    ``usecols = (1, 4, 5)`` will extract the 2nd, 5th and 6th columns.
		names : {None, True, str, sequence}, optional
		    If `names` is True, the field names are read from the first line after
		    the first `skip_header` lines. This line can optionally be preceded
		    by a comment delimiter. If `names` is a sequence or a single-string of
		    comma-separated names, the names will be used to define the field names
		    in a structured dtype. If `names` is None, the names of the dtype
		    fields will be used, if any.
		excludelist : sequence, optional
		    A list of names to exclude. This list is appended to the default list
		    ['return','file','print']. Excluded names are appended with an
		    underscore: for example, `file` would become `file_`.
		deletechars : str, optional
		    A string combining invalid characters that must be deleted from the
		    names.
		defaultfmt : str, optional
		    A format used to define default field names, such as "f%i" or "f_%02i".
		autostrip : bool, optional
		    Whether to automatically strip white spaces from the variables.
		replace_space : char, optional
		    Character(s) used in replacement of white spaces in the variable
		    names. By default, use a '_'.
		case_sensitive : {True, False, 'upper', 'lower'}, optional
		    If True, field names are case sensitive.
		    If False or 'upper', field names are converted to upper case.
		    If 'lower', field names are converted to lower case.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = genfromtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		usemask : bool, optional
		    If True, return a masked array.
		    If False, return a regular array.
		loose : bool, optional
		    If True, do not raise errors for invalid values.
		invalid_raise : bool, optional
		    If True, an exception is raised if an inconsistency is detected in the
		    number of columns.
		    If False, a warning is emitted and the offending lines are skipped.
		max_rows : int,  optional
		    The maximum number of rows to read. Must not be used with skip_footer
		    at the same time.  If given, the value must be at least 1. Default is
		    to read the entire file.
		
		    .. versionadded:: 1.10.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply when `fname` is
		    a file object.  The special value 'bytes' enables backward compatibility
		    workarounds that ensure that you receive byte arrays when possible
		    and passes latin1 encoded strings to converters. Override this value to
		    receive unicode arrays and pass strings as input to converters.  If set
		    to None the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Data read from the text file. If `usemask` is True, this is a
		    masked array.
		
		See Also
		--------
		numpy.loadtxt : equivalent function when no data is missing.
		
		Notes
		-----
		* When spaces are used as delimiters, or when no delimiter has been given
		  as input, there should not be any missing data between two fields.
		* When the variables are named (either by a flexible dtype or with `names`),
		  there must not be any header in the file (else a ValueError
		  exception is raised).
		* Individual values are not stripped of spaces by default.
		  When using a custom converter, make sure the function does remove spaces.
		
		References
		----------
		.. [1] NumPy User Guide, section `I/O with NumPy
		       <https://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
		
		Examples
		--------
		>>> from io import StringIO
		>>> import numpy as np
		
		Comma delimited file with mixed dtype
		
		>>> s = StringIO(u"1,1.3,abcde")
		>>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
		... ('mystring','S5')], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Using dtype = None
		
		>>> _ = s.seek(0) # needed for StringIO example only
		>>> data = np.genfromtxt(s, dtype=None,
		... names = ['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Specifying dtype and names
		
		>>> _ = s.seek(0)
		>>> data = np.genfromtxt(s, dtype="i8,f8,S5",
		... names=['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		An example with fixed-width columns
		
		>>> s = StringIO(u"11.3abcde")
		>>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
		...     delimiter=[1,3,5])
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', 'S5')])
		
		An example to show comments
		
		>>> f = StringIO('''
		... text,# of chars
		... hello world,11
		... numpy,5''')
		>>> np.genfromtxt(f, dtype='S12,S12', delimiter=',')
		array([(b'text', b''), (b'hello world', b'11'), (b'numpy', b'5')],
		  dtype=[('f0', 'S12'), ('f1', 'S12')])
	**/
	static public function genfromtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic, ?encoding:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Returns whether one or several fields of a dtype are nested.
		
		Parameters
		----------
		ndtype : dtype
		    Data-type of a structured array.
		
		Raises
		------
		AttributeError
		    If `ndtype` does not have a `names` attribute.
		
		Examples
		--------
		>>> dt = np.dtype([('name', 'S4'), ('x', float), ('y', float)])
		>>> np.lib._iotools.has_nested_fields(dt)
		False
	**/
	static public function has_nested_fields(ndtype:Dynamic):Dynamic;
	/**
		Load arrays or pickled objects from ``.npy``, ``.npz`` or pickled files.
		
		.. warning:: Loading files that contain object arrays uses the ``pickle``
		             module, which is not secure against erroneous or maliciously
		             constructed data. Consider passing ``allow_pickle=False`` to
		             load data that is known not to contain object arrays for the
		             safer handling of untrusted sources.
		
		Parameters
		----------
		file : file-like object, string, or pathlib.Path
		    The file to read. File-like objects must support the
		    ``seek()`` and ``read()`` methods. Pickled files require that the
		    file-like object support the ``readline()`` method as well.
		mmap_mode : {None, 'r+', 'r', 'w+', 'c'}, optional
		    If not None, then memory-map the file, using the given mode (see
		    `numpy.memmap` for a detailed description of the modes).  A
		    memory-mapped array is kept on disk. However, it can be accessed
		    and sliced like any ndarray.  Memory mapping is especially useful
		    for accessing small fragments of large files without reading the
		    entire file into memory.
		allow_pickle : bool, optional
		    Allow loading pickled object arrays stored in npy files. Reasons for
		    disallowing pickles include security, as loading pickled data can
		    execute arbitrary code. If pickles are disallowed, loading object
		    arrays will fail. Default: False
		
		    .. versionchanged:: 1.16.3
		        Made default False in response to CVE-2019-6446.
		
		fix_imports : bool, optional
		    Only useful when loading Python 2 generated pickled files on Python 3,
		    which includes npy/npz files containing object arrays. If `fix_imports`
		    is True, pickle will try to map the old Python 2 names to the new names
		    used in Python 3.
		encoding : str, optional
		    What encoding to use when reading Python 2 strings. Only useful when
		    loading Python 2 generated pickled files in Python 3, which includes
		    npy/npz files containing object arrays. Values other than 'latin1',
		    'ASCII', and 'bytes' are not allowed, as they can corrupt numerical
		    data. Default: 'ASCII'
		
		Returns
		-------
		result : array, tuple, dict, etc.
		    Data stored in the file. For ``.npz`` files, the returned instance
		    of NpzFile class must be closed to avoid leaking file descriptors.
		
		Raises
		------
		OSError
		    If the input file does not exist or cannot be read.
		UnpicklingError
		    If ``allow_pickle=True``, but the file cannot be loaded as a pickle.
		ValueError
		    The file contains an object array, but ``allow_pickle=False`` given.
		
		See Also
		--------
		save, savez, savez_compressed, loadtxt
		memmap : Create a memory-map to an array stored in a file on disk.
		lib.format.open_memmap : Create or load a memory-mapped ``.npy`` file.
		
		Notes
		-----
		- If the file contains pickle data, then whatever object is stored
		  in the pickle is returned.
		- If the file is a ``.npy`` file, then a single array is returned.
		- If the file is a ``.npz`` file, then a dictionary-like object is
		  returned, containing ``{filename: array}`` key-value pairs, one for
		  each file in the archive.
		- If the file is a ``.npz`` file, the returned value supports the
		  context manager protocol in a similar fashion to the open function::
		
		    with load('foo.npz') as data:
		        a = data['a']
		
		  The underlying file descriptor is closed when exiting the 'with'
		  block.
		
		Examples
		--------
		Store data to disk, and load it again:
		
		>>> np.save('/tmp/123', np.array([[1, 2, 3], [4, 5, 6]]))
		>>> np.load('/tmp/123.npy')
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		Store compressed data to disk, and load it again:
		
		>>> a=np.array([[1, 2, 3], [4, 5, 6]])
		>>> b=np.array([1, 2])
		>>> np.savez('/tmp/123.npz', a=a, b=b)
		>>> data = np.load('/tmp/123.npz')
		>>> data['a']
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> data['b']
		array([1, 2])
		>>> data.close()
		
		Mem-map the stored array, and then access the second row
		directly from disk:
		
		>>> X = np.load('/tmp/123.npy', mmap_mode='r')
		>>> X[1, :]
		memmap([4, 5, 6])
	**/
	static public function load(file:Dynamic, ?mmap_mode:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Load data from a text file.
		
		Each row in the text file must have the same number of values.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : data-type, optional
		    Data-type of the resulting array; default: float.  If this is a
		    structured data-type, the resulting array will be 1-dimensional, and
		    each row will be interpreted as an element of the array.  In this
		    case, the number of columns used must match the number of fields in
		    the data-type.
		comments : str or sequence of str, optional
		    The characters or list of characters used to indicate the start of a
		    comment. None implies no comments. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is '#'.
		delimiter : str, optional
		    The string used to separate values. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is whitespace.
		converters : dict, optional
		    A dictionary mapping column number to a function that will parse the
		    column string into the desired value.  E.g., if column 0 is a date
		    string: ``converters = {0: datestr2num}``.  Converters can also be
		    used to provide a default value for missing data (but see also
		    `genfromtxt`): ``converters = {3: lambda s: float(s.strip() or 0)}``.
		    Default: None.
		skiprows : int, optional
		    Skip the first `skiprows` lines, including comments; default: 0.
		usecols : int or sequence, optional
		    Which columns to read, with 0 being the first. For example,
		    ``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
		    The default, None, results in all columns being read.
		
		    .. versionchanged:: 1.11.0
		        When a single column has to be read it is possible to use
		        an integer instead of a tuple. E.g ``usecols = 3`` reads the
		        fourth column the same way as ``usecols = (3,)`` would.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		ndmin : int, optional
		    The returned array will have at least `ndmin` dimensions.
		    Otherwise mono-dimensional axes will be squeezed.
		    Legal values: 0 (default), 1 or 2.
		
		    .. versionadded:: 1.6.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		    The special value 'bytes' enables backward compatibility workarounds
		    that ensures you receive byte arrays as results if possible and passes
		    'latin1' encoded strings to converters. Override this value to receive
		    unicode arrays and pass strings as input to converters.  If set to None
		    the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		max_rows : int, optional
		    Read `max_rows` lines of content after `skiprows` lines. The default
		    is to read all the lines.
		
		    .. versionadded:: 1.16.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Data read from the text file.
		
		See Also
		--------
		load, fromstring, fromregex
		genfromtxt : Load data with missing values handled as specified.
		scipy.io.loadmat : reads MATLAB data files
		
		Notes
		-----
		This function aims to be a fast reader for simply formatted files.  The
		`genfromtxt` function provides more sophisticated handling of, e.g.,
		lines with missing values.
		
		.. versionadded:: 1.10.0
		
		The strings produced by the Python float.hex method can be used as
		input for floats.
		
		Examples
		--------
		>>> from io import StringIO   # StringIO behaves like a file object
		>>> c = StringIO("0 1\n2 3")
		>>> np.loadtxt(c)
		array([[0., 1.],
		       [2., 3.]])
		
		>>> d = StringIO("M 21 72\nF 35 58")
		>>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
		...                      'formats': ('S1', 'i4', 'f4')})
		array([(b'M', 21, 72.), (b'F', 35, 58.)],
		      dtype=[('gender', 'S1'), ('age', '<i4'), ('weight', '<f4')])
		
		>>> c = StringIO("1,0,2\n3,0,4")
		>>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
		>>> x
		array([1., 3.])
		>>> y
		array([2., 4.])
		
		This example shows how `converters` can be used to convert a field
		with a trailing minus sign into a negative number.
		
		>>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
		>>> def conv(fld):
		...     return -float(fld[:-1]) if fld.endswith(b'-') else float(fld)
		...
		>>> np.loadtxt(s, converters={0: conv, 1: conv})
		array([[ 10.01, -31.25],
		       [ 19.22,  64.31],
		       [-17.57,  63.94]])
	**/
	static public function loadtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic, ?encoding:Dynamic, ?max_rows:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Same as a.__index__()
	**/
	static public function opindex(a:Dynamic):Dynamic;
	/**
		Return the file system path representation of the object.
		
		If the object is str or bytes, then allow it to pass through as-is. If the
		object defines __fspath__(), then return the result of that method. All other
		types raise a TypeError.
	**/
	static public function os_fspath(path:Dynamic):Dynamic;
	/**
		packbits(a, /, axis=None, bitorder='big')
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		a : array_like
		    An array of integers or booleans whose elements should be packed to
		    bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		bitorder : {'big', 'little'}, optional
		    The order of the input bits. 'big' will mimic bin(val),
		    ``[0, 0, 0, 0, 0, 0, 1, 1] => 3 = 0b00000011``, 'little' will
		    reverse the order so ``[1, 1, 0, 0, 0, 0, 0, 0] => 3``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		packed : ndarray
		    Array of type uint8 whose elements represent bits corresponding to the
		    logical (0 or nonzero) value of the input elements. The shape of
		    `packed` has the same number of dimensions as the input (unless `axis`
		    is None, in which case the output is 1-D).
		
		See Also
		--------
		unpackbits: Unpacks elements of a uint8 array into a binary-valued output
		            array.
		
		Examples
		--------
		>>> a = np.array([[[1,0,1],
		...                [0,1,0]],
		...               [[1,1,0],
		...                [0,0,1]]])
		>>> b = np.packbits(a, axis=-1)
		>>> b
		array([[[160],
		        [ 64]],
		       [[192],
		        [ 32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load ASCII data stored in a comma-separated file.
		
		The returned array is a record array (if ``usemask=False``, see
		`recarray`) or a masked record array (if ``usemask=True``,
		see `ma.mrecords.MaskedRecords`).
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function to load ASCII data.
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromcsv(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load ASCII data from a file and return it in a record array.
		
		If ``usemask=False`` a standard `recarray` is returned,
		if ``usemask=True`` a MaskedRecords array is returned.
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromtxt(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save an array to a binary file in NumPy ``.npy`` format.
		
		Parameters
		----------
		file : file, str, or pathlib.Path
		    File or filename to which the data is saved.  If file is a file-object,
		    then the filename is unchanged.  If file is a string or Path, a ``.npy``
		    extension will be appended to the filename if it does not already
		    have one.
		arr : array_like
		    Array data to be saved.
		allow_pickle : bool, optional
		    Allow saving object arrays using Python pickles. Reasons for disallowing
		    pickles include security (loading pickled data can execute arbitrary
		    code) and portability (pickled objects may not be loadable on different
		    Python installations, for example if the stored objects require libraries
		    that are not available, and not all pickled data is compatible between
		    Python 2 and Python 3).
		    Default: True
		fix_imports : bool, optional
		    Only useful in forcing objects in object arrays on Python 3 to be
		    pickled in a Python 2 compatible way. If `fix_imports` is True, pickle
		    will try to map the new Python 3 names to the old module names used in
		    Python 2, so that the pickle data stream is readable with Python 2.
		
		See Also
		--------
		savez : Save several arrays into a ``.npz`` archive
		savetxt, load
		
		Notes
		-----
		For a description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		Any data saved to the file is appended to the end of the file.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		
		>>> x = np.arange(10)
		>>> np.save(outfile, x)
		
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> np.load(outfile)
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		
		>>> with open('test.npy', 'wb') as f:
		...     np.save(f, np.array([1, 2]))
		...     np.save(f, np.array([1, 3]))
		>>> with open('test.npy', 'rb') as f:
		...     a = np.load(f)
		...     b = np.load(f)
		>>> print(a, b)
		# [1 2] [1 3]
	**/
	static public function save(file:Dynamic, arr:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic):Dynamic;
	/**
		Save an array to a text file.
		
		Parameters
		----------
		fname : filename or file handle
		    If the filename ends in ``.gz``, the file is automatically saved in
		    compressed gzip format.  `loadtxt` understands gzipped files
		    transparently.
		X : 1D or 2D array_like
		    Data to be saved to a text file.
		fmt : str or sequence of strs, optional
		    A single format (%10.5f), a sequence of formats, or a
		    multi-format string, e.g. 'Iteration %d -- %10.5f', in which
		    case `delimiter` is ignored. For complex `X`, the legal options
		    for `fmt` are:
		
		    * a single specifier, `fmt='%.4e'`, resulting in numbers formatted
		      like `' (%s+%sj)' % (fmt, fmt)`
		    * a full string specifying every real and imaginary part, e.g.
		      `' %.4e %+.4ej %.4e %+.4ej %.4e %+.4ej'` for 3 columns
		    * a list of specifiers, one per column - in this case, the real
		      and imaginary part must have separate specifiers,
		      e.g. `['%.3e + %.3ej', '(%.15e%+.15ej)']` for 2 columns
		delimiter : str, optional
		    String or character separating columns.
		newline : str, optional
		    String or character separating lines.
		
		    .. versionadded:: 1.5.0
		header : str, optional
		    String that will be written at the beginning of the file.
		
		    .. versionadded:: 1.7.0
		footer : str, optional
		    String that will be written at the end of the file.
		
		    .. versionadded:: 1.7.0
		comments : str, optional
		    String that will be prepended to the ``header`` and ``footer`` strings,
		    to mark them as comments. Default: '# ',  as expected by e.g.
		    ``numpy.loadtxt``.
		
		    .. versionadded:: 1.7.0
		encoding : {None, str}, optional
		    Encoding used to encode the outputfile. Does not apply to output
		    streams. If the encoding is something other than 'bytes' or 'latin1'
		    you will not be able to load the file in NumPy versions < 1.14. Default
		    is 'latin1'.
		
		    .. versionadded:: 1.14.0
		
		
		See Also
		--------
		save : Save an array to a binary file in NumPy ``.npy`` format
		savez : Save several arrays into an uncompressed ``.npz`` archive
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		Further explanation of the `fmt` parameter
		(``%[flag]width[.precision]specifier``):
		
		flags:
		    ``-`` : left justify
		
		    ``+`` : Forces to precede result with + or -.
		
		    ``0`` : Left pad the number with zeros instead of space (see width).
		
		width:
		    Minimum number of characters to be printed. The value is not truncated
		    if it has more characters.
		
		precision:
		    - For integer specifiers (eg. ``d,i,o,x``), the minimum number of
		      digits.
		    - For ``e, E`` and ``f`` specifiers, the number of digits to print
		      after the decimal point.
		    - For ``g`` and ``G``, the maximum number of significant digits.
		    - For ``s``, the maximum number of characters.
		
		specifiers:
		    ``c`` : character
		
		    ``d`` or ``i`` : signed decimal integer
		
		    ``e`` or ``E`` : scientific notation with ``e`` or ``E``.
		
		    ``f`` : decimal floating point
		
		    ``g,G`` : use the shorter of ``e,E`` or ``f``
		
		    ``o`` : signed octal
		
		    ``s`` : string of characters
		
		    ``u`` : unsigned decimal integer
		
		    ``x,X`` : unsigned hexadecimal integer
		
		This explanation of ``fmt`` is not complete, for an exhaustive
		specification see [1]_.
		
		References
		----------
		.. [1] `Format Specification Mini-Language
		       <https://docs.python.org/library/string.html#format-specification-mini-language>`_,
		       Python Documentation.
		
		Examples
		--------
		>>> x = y = z = np.arange(0.0,5.0,1.0)
		>>> np.savetxt('test.out', x, delimiter=',')   # X is an array
		>>> np.savetxt('test.out', (x,y,z))   # x,y,z equal sized 1D arrays
		>>> np.savetxt('test.out', x, fmt='%1.4e')   # use exponential notation
	**/
	static public function savetxt(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Save several arrays into a single file in uncompressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		save : Save a single array to a binary file in NumPy format.
		savetxt : Save an array to a file as plain text.
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is not compressed and each file
		in the archive contains one variable in ``.npy`` format. For a
		description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Keys passed in `kwds` are used as filenames inside the ZIP archive.
		Therefore, keys should be valid filenames; e.g., avoid keys that begin with
		``/`` or contain ``.``.
		
		When naming variables with keyword arguments, it is not possible to name a
		variable ``file``, as this would cause the ``file`` argument to be defined
		twice in the call to ``savez``.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		>>> x = np.arange(10)
		>>> y = np.sin(x)
		
		Using `savez` with \*args, the arrays are saved with default names.
		
		>>> np.savez(outfile, x, y)
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> npzfile = np.load(outfile)
		>>> npzfile.files
		['arr_0', 'arr_1']
		>>> npzfile['arr_0']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		Using `savez` with \**kwds, the arrays are saved with the keyword names.
		
		>>> outfile = TemporaryFile()
		>>> np.savez(outfile, x=x, y=y)
		>>> _ = outfile.seek(0)
		>>> npzfile = np.load(outfile)
		>>> sorted(npzfile.files)
		['x', 'y']
		>>> npzfile['x']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
	**/
	static public function savez(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save several arrays into a single file in compressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		numpy.save : Save a single array to a binary file in NumPy format.
		numpy.savetxt : Save an array to a file as plain text.
		numpy.savez : Save several arrays into an uncompressed ``.npz`` file format
		numpy.load : Load the files created by savez_compressed.
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is compressed with
		``zipfile.ZIP_DEFLATED`` and each file in the archive contains one variable
		in ``.npy`` format. For a description of the ``.npy`` format, see
		:py:mod:`numpy.lib.format`.
		
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Examples
		--------
		>>> test_array = np.random.rand(3, 2)
		>>> test_vector = np.random.rand(4)
		>>> np.savez_compressed('/tmp/123', a=test_array, b=test_vector)
		>>> loaded = np.load('/tmp/123.npz')
		>>> print(np.array_equal(test_array, loaded['a']))
		True
		>>> print(np.array_equal(test_vector, loaded['b']))
		True
	**/
	static public function savez_compressed(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function set_array_function_like_doc(public_api:Dynamic):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	/**
		unpackbits(a, /, axis=None, count=None, bitorder='big')
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `a` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is
		either 1-D (if `axis` is ``None``) or the same shape as the input
		array with unpacking done along the axis specified.
		
		Parameters
		----------
		a : ndarray, uint8 type
		   Input array.
		axis : int, optional
		    The dimension over which bit-unpacking is done.
		    ``None`` implies unpacking the flattened array.
		count : int or None, optional
		    The number of elements to unpack along `axis`, provided as a way
		    of undoing the effect of packing a size that is not a multiple
		    of eight. A non-negative number means to only unpack `count`
		    bits. A negative number means to trim off that many bits from
		    the end. ``None`` means to unpack the entire array (the
		    default). Counts larger than the available number of bits will
		    add zero padding to the output. Negative counts must not
		    exceed the available number of bits.
		
		    .. versionadded:: 1.17.0
		
		bitorder : {'big', 'little'}, optional
		    The order of the returned bits. 'big' will mimic bin(val),
		    ``3 = 0b00000011 => [0, 0, 0, 0, 0, 0, 1, 1]``, 'little' will reverse
		    the order to ``[1, 1, 0, 0, 0, 0, 0, 0]``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in
		           a uint8 array.
		
		Examples
		--------
		>>> a = np.array([[2], [7], [23]], dtype=np.uint8)
		>>> a
		array([[ 2],
		       [ 7],
		       [23]], dtype=uint8)
		>>> b = np.unpackbits(a, axis=1)
		>>> b
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1]], dtype=uint8)
		>>> c = np.unpackbits(a, axis=1, count=-3)
		>>> c
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0]], dtype=uint8)
		
		>>> p = np.packbits(b, axis=0)
		>>> np.unpackbits(p, axis=0)
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]], dtype=uint8)
		>>> np.array_equal(b, np.unpackbits(p, axis=0, count=b.shape[0]))
		True
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a ZipFile.
		
		Allows for Zip64, and the `file` argument can accept file, str, or
		pathlib.Path objects. `args` and `kwargs` are passed to the zipfile.ZipFile
		constructor.
	**/
	static public function zipfile_factory(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}