/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata") extern class Stata_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var AnyStr : Dynamic;
	static public function CompressionOptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function StorageOptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks the dtypes of the columns of a pandas DataFrame for
		compatibility with the data types and ranges supported by Stata, and
		converts if necessary.
		
		Parameters
		----------
		data : DataFrame
		    The DataFrame to check and convert
		
		Notes
		-----
		Numeric columns in Stata must be one of int8, int16, int32, float32 or
		float64, with some additional value restrictions.  int8 and int16 columns
		are checked for violations of the value restrictions and upcast if needed.
		int64 data is not usable in Stata, and so it is downcast to int32 whenever
		the value are in the int32 range, and sidecast to float64 when larger than
		this range.  If the int64 values are outside of the range of those
		perfectly representable as float64 values, a warning is raised.
		
		bool columns are cast to int8.  uint columns are converted to int of the
		same size if there is no loss in precision, otherwise are upcast to a
		larger type.  uint64 is currently not supported since it is concerted to
		object in a DataFrame.
	**/
	static public function _cast_to_stata_types(data:Dynamic):Dynamic;
	static public var _chunksize_params : Dynamic;
	/**
		Convert from one of the stata date formats to a type in TYPE_MAP.
	**/
	static public function _convert_datetime_to_stata_type(fmt:Dynamic):Dynamic;
	static public var _date_formats : Dynamic;
	/**
		Convert from datetime to SIF. https://www.stata.com/help.cgi?datetime
		
		Parameters
		----------
		dates : Series
		    Series or array containing datetime.datetime or datetime64[ns] to
		    convert to the Stata Internal Format given by fmt
		fmt : str
		    The format to convert to. Can be, tc, td, tw, tm, tq, th, ty
	**/
	static public function _datetime_to_stata_elapsed_vec(dates:Dynamic, fmt:Dynamic):Dynamic;
	/**
		Map numpy dtype to stata's default format for this type. Not terribly
		important since users can change this in Stata. Semantics are
		
		object  -> "%DDs" where DD is the length of the string.  If not a string,
		            raise ValueError
		float64 -> "%10.0g"
		float32 -> "%9.0g"
		int64   -> "%9.0g"
		int32   -> "%12.0g"
		int16   -> "%8.0g"
		int8    -> "%8.0g"
		strl    -> "%9s"
	**/
	static public function _dtype_to_default_stata_fmt(dtype:Dynamic, column:Dynamic, ?dta_version:Dynamic, ?force_strl:Dynamic):Dynamic;
	/**
		Convert dtype types to stata types. Returns the byte of the given ordinal.
		See TYPE_MAP and comments for an explanation. This is also explained in
		the dta spec.
		1 - 244 are strings of this length
		                     Pandas    Stata
		251 - for int8      byte
		252 - for int16     int
		253 - for int32     long
		254 - for float32   float
		255 - for double    double
		
		If there are dates to convert, then dtype will already have the correct
		type inserted.
	**/
	static public function _dtype_to_stata_type(dtype:Dynamic, column:Dynamic):Dynamic;
	/**
		Converts dtype types to stata types. Returns the byte of the given ordinal.
		See TYPE_MAP and comments for an explanation. This is also explained in
		the dta spec.
		1 - 2045 are strings of this length
		            Pandas    Stata
		32768 - for object    strL
		65526 - for int8      byte
		65527 - for int16     int
		65528 - for int32     long
		65529 - for float32   float
		65530 - for double    double
		
		If there are dates to convert, then dtype will already have the correct
		type inserted.
	**/
	static public function _dtype_to_stata_type_117(dtype:Dynamic, column:Dynamic, force_strl:Dynamic):Dynamic;
	static public var _iterator_params : Dynamic;
	static public function _maybe_convert_to_int_keys(convert_dates:Dynamic, varlist:Dynamic):Dynamic;
	/**
		Take a char string and pads it with null bytes until it's length chars.
	**/
	static public function _pad_bytes(name:Dynamic, length:Dynamic):Dynamic;
	/**
		Takes a bytes instance and pads it with null bytes until it's length chars.
	**/
	static public function _pad_bytes_new(name:Dynamic, length:Dynamic):Dynamic;
	static public var _read_method_doc : Dynamic;
	static public var _read_stata_doc : Dynamic;
	static public var _reader_notes : Dynamic;
	static public function _set_endianness(endianness:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	/**
		Convert from SIF to datetime. https://www.stata.com/help.cgi?datetime
		
		Parameters
		----------
		dates : Series
		    The Stata Internal Format date to convert to datetime according to fmt
		fmt : str
		    The format to convert to. Can be, tc, td, tw, tm, tq, th, ty
		    Returns
		
		Returns
		-------
		converted : Series
		    The converted dates
		
		Examples
		--------
		>>> dates = pd.Series([52])
		>>> _stata_elapsed_date_to_datetime_vec(dates , "%tw")
		0   1961-01-01
		dtype: datetime64[ns]
		
		Notes
		-----
		datetime/c - tc
		    milliseconds since 01jan1960 00:00:00.000, assuming 86,400 s/day
		datetime/C - tC - NOT IMPLEMENTED
		    milliseconds since 01jan1960 00:00:00.000, adjusted for leap seconds
		date - td
		    days since 01jan1960 (01jan1960 = 0)
		weekly date - tw
		    weeks since 1960w1
		    This assumes 52 weeks in a year, then adds 7 * remainder of the weeks.
		    The datetime value is the start of the week in terms of days in the
		    year, not ISO calendar weeks.
		monthly date - tm
		    months since 1960m1
		quarterly date - tq
		    quarters since 1960q1
		half-yearly date - th
		    half-years since 1960h1 yearly
		date - ty
		    years since 0000
	**/
	static public function _stata_elapsed_date_to_datetime_vec(dates:Dynamic, fmt:Dynamic):pandas.Series;
	static public var _stata_reader_doc : Dynamic;
	static public var _statafile_processing_params1 : Dynamic;
	static public var _statafile_processing_params2 : Dynamic;
	static public var _version_error : Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public var categorical_conversion_warning : Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var excessive_string_length_error : Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf : str or file handle
		    File path or object.
		mode : str
		    Mode to open path_or_buf with.
		encoding : str or None
		    Encoding to use.
		compression : str or dict, default 'infer'
		    For on-the-fly compression of the output data. If 'infer' and 'path_or_buf'
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). Set to
		    ``None`` for no compression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for faster compression and to create
		    a reproducible gzip archive:
		    ``compression={'method': 'gzip', 'compresslevel': 1, 'mtime': 1}``.
		
		    .. versionchanged:: 1.0.0
		       May now be a dict with key 'method' as compression mode
		       and other keys as compression options if compression
		       mode is 'zip'.
		
		    .. versionchanged:: 1.1.0
		       Passing compression options as keys in dict is now
		       supported for compression modes 'gzip', 'bz2', 'zstd' and 'zip'.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		memory_map : bool, default False
		    See parsers._parser_params for more information.
		is_text : bool, default True
		    Whether the type of the content passed to the file/buffer is string or
		    bytes. This is not the same as `"b" not in mode`. If a string content is
		    passed to a binary file/buffer, a wrapper is inserted.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
		storage_options: StorageOptions = None
		    Passed to _get_filepath_or_buffer
		
		.. versionchanged:: 1.2.0
		
		Returns the dataclass IOHandles
	**/
	static public function get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic, ?errors:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Efficiently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		skipna : bool, default True
		    Ignore NaN values when inferring the type.
		
		Returns
		-------
		str
		    Describing the common type of the input data.
		Results can include:
		
		- string
		- bytes
		- floating
		- integer
		- mixed-integer
		- mixed-integer-float
		- decimal
		- complex
		- categorical
		- boolean
		- datetime64
		- datetime
		- date
		- timedelta64
		- timedelta
		- time
		- period
		- mixed
		- unknown-array
		
		Raises
		------
		TypeError
		    If ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		- 'unknown-array' is the catchall for something that *is* an array (has
		  a dtype attribute), but has a dtype unknown to pandas (e.g. external
		  extension array)
		
		Examples
		--------
		>>> import datetime
		>>> infer_dtype(['foo', 'bar'])
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=True)
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=False)
		'mixed'
		
		>>> infer_dtype([b'foo', b'bar'])
		'bytes'
		
		>>> infer_dtype([1, 2, 3])
		'integer'
		
		>>> infer_dtype([1, 2, 3.5])
		'mixed-integer-float'
		
		>>> infer_dtype([1.0, 2.0, 3.5])
		'floating'
		
		>>> infer_dtype(['a', 1])
		'mixed-integer'
		
		>>> infer_dtype([Decimal(1), Decimal(2.0)])
		'decimal'
		
		>>> infer_dtype([True, False])
		'boolean'
		
		>>> infer_dtype([True, False, np.nan])
		'boolean'
		
		>>> infer_dtype([pd.Timestamp('20130101')])
		'datetime'
		
		>>> infer_dtype([datetime.date(2013, 1, 1)])
		'date'
		
		>>> infer_dtype([np.datetime64('2013-01-01')])
		'datetime64'
		
		>>> infer_dtype([datetime.timedelta(0, 1, 1)])
		'timedelta'
		
		>>> infer_dtype(pd.Series(list('aabc')).astype('category'))
		'categorical'
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var invalid_name_doc : Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
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
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		
		>>> pd.isna(pd.NA)
		True
		
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
		Return the maximum size of elements in a 1-dim string array.
	**/
	static public function max_len_string_array(arr:Dynamic):Dynamic;
	static public var precision_loss_doc : Dynamic;
	/**
		Read Stata file into DataFrame.
		
		Parameters
		----------
		filepath_or_buffer : str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be: ``file://localhost/path/to/table.dta``.
		
		    If you want to pass in a path object, pandas accepts any ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handle (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		convert_dates : bool, default True
		    Convert date variables to DataFrame time values.
		convert_categoricals : bool, default True
		    Read value labels and convert columns to Categorical/Factor variables.
		index_col : str, optional
		    Column to set as index.
		convert_missing : bool, default False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nan.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : bool, default True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64).
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns.
		order_categoricals : bool, default True
		    Flag indicating whether converted categorical data are ordered.
		chunksize : int, default None
		    Return StataReader object for iterations, returns chunks with
		    given number of lines.
		iterator : bool, default False
		    Return StataReader object.
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and '%s' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		Returns
		-------
		DataFrame or StataReader
		
		See Also
		--------
		io.stata.StataReader : Low-level reader for Stata data files.
		DataFrame.to_stata: Export Stata data files.
		
		Notes
		-----
		Categorical variables read through an iterator may not have the same
		categories and dtype. This occurs when  a variable stored in a DTA
		file is associated to an incomplete set of value labels that only
		label a strict subset of the values.
		
		Examples
		--------
		
		Creating a dummy stata for this example
		>>> df = pd.DataFrame({'animal': ['falcon', 'parrot', 'falcon',
		...                              'parrot'],
		...                   'speed': [350, 18, 361, 15]})  # doctest: +SKIP
		>>> df.to_stata('animals.dta')  # doctest: +SKIP
		
		Read a Stata dta file:
		
		>>> df = pd.read_stata('animals.dta')  # doctest: +SKIP
		
		Read a Stata dta file in 10,000 line chunks:
		>>> values = np.random.randint(0, 10, size=(20_000, 1), dtype="uint8")  # doctest: +SKIP
		>>> df = pd.DataFrame(values, columns=["i"])  # doctest: +SKIP
		>>> df.to_stata('filename.dta')  # doctest: +SKIP
		
		>>> itr = pd.read_stata('filename.dta', chunksize=10000)  # doctest: +SKIP
		>>> for chunk in itr:
		...    # Operate on a single chunk, e.g., chunk.mean()
		...    pass  # doctest: +SKIP
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public var stata_epoch : Dynamic;
	/**
		Convert argument to datetime.
		
		This function converts a scalar, array-like, :class:`Series` or
		:class:`DataFrame`/dict-like to a pandas datetime object.
		
		Parameters
		----------
		arg : int, float, str, datetime, list, tuple, 1-d array, Series, DataFrame/dict-like
		    The object to convert to a datetime. If a :class:`DataFrame` is provided, the
		    method expects minimally the following columns: :const:`"year"`,
		    :const:`"month"`, :const:`"day"`.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If :const:`'raise'`, then invalid parsing will raise an exception.
		    - If :const:`'coerce'`, then invalid parsing will be set as :const:`NaT`.
		    - If :const:`'ignore'`, then invalid parsing will return the input.
		dayfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		    If :const:`True`, parses dates with the day first, e.g. :const:`"10/11/12"`
		    is parsed as :const:`2012-11-10`.
		
		    .. warning::
		
		        ``dayfirst=True`` is not strict, but will prefer to parse
		        with day first. If a delimited date string cannot be parsed in
		        accordance with the given `dayfirst` option, e.g.
		        ``to_datetime(['31-12-2021'])``, then a warning will be shown.
		
		yearfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		
		    - If :const:`True` parses dates with the year first, e.g.
		      :const:`"10/11/12"` is parsed as :const:`2010-11-12`.
		    - If both `dayfirst` and `yearfirst` are :const:`True`, `yearfirst` is
		      preceded (same as :mod:`dateutil`).
		
		    .. warning::
		
		        ``yearfirst=True`` is not strict, but will prefer to parse
		        with year first.
		
		utc : bool, default None
		    Control timezone-related parsing, localization and conversion.
		
		    - If :const:`True`, the function *always* returns a timezone-aware
		      UTC-localized :class:`Timestamp`, :class:`Series` or
		      :class:`DatetimeIndex`. To do this, timezone-naive inputs are
		      *localized* as UTC, while timezone-aware inputs are *converted* to UTC.
		
		    - If :const:`False` (default), inputs will not be coerced to UTC.
		      Timezone-naive inputs will remain naive, while timezone-aware ones
		      will keep their time offsets. Limitations exist for mixed
		      offsets (typically, daylight savings), see :ref:`Examples
		      <to_datetime_tz_examples>` section for details.
		
		    See also: pandas general documentation about `timezone conversion and
		    localization
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		    #time-zone-handling>`_.
		
		format : str, default None
		    The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. Note that
		    :const:`"%f"` will parse all the way up to nanoseconds. See
		    `strftime documentation
		    <https://docs.python.org/3/library/datetime.html
		    #strftime-and-strptime-behavior>`_ for more information on choices.
		exact : bool, default True
		    Control how `format` is used:
		
		    - If :const:`True`, require an exact `format` match.
		    - If :const:`False`, allow the `format` to match anywhere in the target
		      string.
		
		unit : str, default 'ns'
		    The unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with ``unit='ms'`` and ``origin='unix'`` (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : bool, default False
		    If :const:`True` and no `format` is given, attempt to infer the format
		    of the datetime strings based on the first non-NaN element,
		    and if it can be inferred, switch to a faster method of parsing them.
		    In some cases this can increase the parsing speed by ~5-10x.
		origin : scalar, default 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If :const:`'unix'` (or POSIX) time; origin is set to 1970-01-01.
		    - If :const:`'julian'`, unit must be :const:`'D'`, and origin is set to
		      beginning of Julian Calendar. Julian day number :const:`0` is assigned
		      to the day starting at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		cache : bool, default True
		    If :const:`True`, use a cache of unique, converted dates to apply the
		    datetime conversion. May produce significant speed-up when parsing
		    duplicate date strings, especially ones with timezone offsets. The cache
		    is only used when there are at least 50 values. The presence of
		    out-of-bounds values will render the cache unusable and may slow down
		    parsing.
		
		    .. versionchanged:: 0.25.0
		        changed default value from :const:`False` to :const:`True`.
		
		Returns
		-------
		datetime
		    If parsing succeeded.
		    Return type depends on input (types in parenthesis correspond to
		    fallback in case of unsuccessful timezone or out-of-range timestamp
		    parsing):
		
		    - scalar: :class:`Timestamp` (or :class:`datetime.datetime`)
		    - array-like: :class:`DatetimeIndex` (or :class:`Series` with
		      :class:`object` dtype containing :class:`datetime.datetime`)
		    - Series: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		    - DataFrame: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		
		Raises
		------
		ParserError
		    When parsing a date from string fails.
		ValueError
		    When another datetime conversion error happens. For example when one
		    of 'year', 'month', day' columns is missing in a :class:`DataFrame`, or
		    when a Timezone-aware :class:`datetime.datetime` is found in an array-like
		    of mixed time offsets, and ``utc=False``.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_timedelta : Convert argument to timedelta.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		
		Many input types are supported, and lead to different output types:
		
		- **scalars** can be int, float, str, datetime object (from stdlib :mod:`datetime`
		  module or :mod:`numpy`). They are converted to :class:`Timestamp` when
		  possible, otherwise they are converted to :class:`datetime.datetime`.
		  None/NaN/null scalars are converted to :const:`NaT`.
		
		- **array-like** can contain int, float, str, datetime objects. They are
		  converted to :class:`DatetimeIndex` when possible, otherwise they are
		  converted to :class:`Index` with :class:`object` dtype, containing
		  :class:`datetime.datetime`. None/NaN/null entries are converted to
		  :const:`NaT` in both cases.
		
		- **Series** are converted to :class:`Series` with :class:`datetime64`
		  dtype when possible, otherwise they are converted to :class:`Series` with
		  :class:`object` dtype, containing :class:`datetime.datetime`. None/NaN/null
		  entries are converted to :const:`NaT` in both cases.
		
		- **DataFrame/dict-like** are converted to :class:`Series` with
		  :class:`datetime64` dtype. For each row a datetime is created from assembling
		  the various dataframe columns. Column keys can be common abbreviations
		  like [‘year’, ‘month’, ‘day’, ‘minute’, ‘second’, ‘ms’, ‘us’, ‘ns’]) or
		  plurals of the same.
		
		The following causes are responsible for :class:`datetime.datetime` objects
		being returned (possibly inside an :class:`Index` or a :class:`Series` with
		:class:`object` dtype) instead of a proper pandas designated type
		(:class:`Timestamp`, :class:`DatetimeIndex` or :class:`Series`
		with :class:`datetime64` dtype):
		
		- when any input element is before :const:`Timestamp.min` or after
		  :const:`Timestamp.max`, see `timestamp limitations
		  <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		  #timeseries-timestamp-limits>`_.
		
		- when ``utc=False`` (default) and the input is an array-like or
		  :class:`Series` containing mixed naive/aware datetime, or aware with mixed
		  time offsets. Note that this happens in the (quite frequent) situation when
		  the timezone has a daylight savings policy. In that case you may wish to
		  use ``utc=True``.
		
		Examples
		--------
		
		**Handling various input formats**
		
		Assembling a datetime from multiple columns of a :class:`DataFrame`. The keys
		can be common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		...                    'month': [2, 3],
		...                    'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		Passing ``infer_datetime_format=True`` can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000'] * 1000)
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=True)  # doctest: +SKIP
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=False)  # doctest: +SKIP
		1 loop, best of 3: 471 ms per loop
		
		Using a unix epoch time
		
		>>> pd.to_datetime(1490195805, unit='s')
		Timestamp('2017-03-22 15:16:45')
		>>> pd.to_datetime(1490195805433502912, unit='ns')
		Timestamp('2017-03-22 15:16:45.433502912')
		
		.. warning:: For float arg, precision rounding might happen. To prevent
		    unexpected behavior use a fixed-width exact type.
		
		Using a non-unix epoch origin
		
		>>> pd.to_datetime([1, 2, 3], unit='D',
		...                origin=pd.Timestamp('1960-01-01'))
		DatetimeIndex(['1960-01-02', '1960-01-03', '1960-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		**Non-convertible date/times**
		
		If a date does not meet the `timestamp limitations
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		#timeseries-timestamp-limits>`_, passing ``errors='ignore'``
		will return the original input instead of raising any exception.
		
		Passing ``errors='coerce'`` will force an out-of-bounds date to :const:`NaT`,
		in addition to forcing non-dates (or non-parseable dates) to :const:`NaT`.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		.. _to_datetime_tz_examples:
		
		**Timezones and time offsets**
		
		The default behaviour (``utc=False``) is as follows:
		
		- Timezone-naive inputs are converted to timezone-naive :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00:15'])
		DatetimeIndex(['2018-10-26 12:00:00', '2018-10-26 13:00:15'],
		              dtype='datetime64[ns]', freq=None)
		
		- Timezone-aware inputs *with constant time offset* are converted to
		  timezone-aware :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0500', '2018-10-26 13:00 -0500'])
		DatetimeIndex(['2018-10-26 12:00:00-05:00', '2018-10-26 13:00:00-05:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-300)]', freq=None)
		
		- However, timezone-aware inputs *with mixed time offsets* (for example
		  issued from a timezone with daylight savings, such as Europe/Paris)
		  are **not successfully converted** to a :class:`DatetimeIndex`. Instead a
		  simple :class:`Index` containing :class:`datetime.datetime` objects is
		  returned:
		
		>>> pd.to_datetime(['2020-10-25 02:00 +0200', '2020-10-25 04:00 +0100'])
		Index([2020-10-25 02:00:00+02:00, 2020-10-25 04:00:00+01:00],
		      dtype='object')
		
		- A mix of timezone-aware and timezone-naive inputs is converted to
		  a timezone-aware :class:`DatetimeIndex` if the offsets of the timezone-aware
		  are constant:
		
		>>> from datetime import datetime
		>>> pd.to_datetime(["2020-01-01 01:00 -01:00", datetime(2020, 1, 1, 3, 0)])
		DatetimeIndex(['2020-01-01 01:00:00-01:00', '2020-01-01 02:00:00-01:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-60)]', freq=None)
		
		- Finally, mixing timezone-aware strings and :class:`datetime.datetime` always
		  raises an error, even if the elements all have the same time offset.
		
		>>> from datetime import datetime, timezone, timedelta
		>>> d = datetime(2020, 1, 1, 18, tzinfo=timezone(-timedelta(hours=1)))
		>>> pd.to_datetime(["2020-01-01 17:00 -0100", d])
		Traceback (most recent call last):
		    ...
		ValueError: Tz-aware datetime.datetime cannot be converted to datetime64
		            unless utc=True
		
		|
		
		Setting ``utc=True`` solves most of the above issues:
		
		- Timezone-naive inputs are *localized* as UTC
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00'], utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 13:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Timezone-aware inputs are *converted* to UTC (the output represents the
		  exact same datetime, but viewed from the UTC time offset `+00:00`).
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0530', '2018-10-26 12:00 -0500'],
		...                utc=True)
		DatetimeIndex(['2018-10-26 17:30:00+00:00', '2018-10-26 17:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Inputs can contain both naive and aware, string or datetime, the above
		  rules still apply
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 12:00 -0530',
		...                datetime(2020, 1, 1, 18),
		...                datetime(2020, 1, 1, 18,
		...                tzinfo=timezone(-timedelta(hours=1)))],
		...                utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 17:30:00+00:00',
		               '2020-01-01 18:00:00+00:00', '2020-01-01 19:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Convert argument to timedelta.
		
		Timedeltas are absolute differences in times, expressed in difference
		units (e.g. days, hours, minutes, seconds). This method converts
		an argument from a recognized timedelta format / value into
		a Timedelta type.
		
		Parameters
		----------
		arg : str, timedelta, list-like or Series
		    The data to be converted to timedelta.
		
		    .. deprecated:: 1.2
		        Strings with units 'M', 'Y' and 'y' do not represent
		        unambiguous timedelta values and will be removed in a future version
		
		unit : str, optional
		    Denotes the unit of the arg for numeric `arg`. Defaults to ``"ns"``.
		
		    Possible values:
		
		    * 'W'
		    * 'D' / 'days' / 'day'
		    * 'hours' / 'hour' / 'hr' / 'h'
		    * 'm' / 'minute' / 'min' / 'minutes' / 'T'
		    * 'S' / 'seconds' / 'sec' / 'second'
		    * 'ms' / 'milliseconds' / 'millisecond' / 'milli' / 'millis' / 'L'
		    * 'us' / 'microseconds' / 'microsecond' / 'micro' / 'micros' / 'U'
		    * 'ns' / 'nanoseconds' / 'nano' / 'nanos' / 'nanosecond' / 'N'
		
		    .. versionchanged:: 1.1.0
		
		       Must not be specified when `arg` context strings and
		       ``errors="raise"``.
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaT.
		    - If 'ignore', then invalid parsing will return the input.
		
		Returns
		-------
		timedelta
		    If parsing succeeded.
		    Return type depends on input:
		
		    - list-like: TimedeltaIndex of timedelta64 dtype
		    - Series: Series of timedelta64 dtype
		    - scalar: Timedelta
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		If the precision is higher than nanoseconds, the precision of the duration is
		truncated to nanoseconds for string inputs.
		
		Examples
		--------
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015500')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015500', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['0 days 00:00:00', '0 days 00:00:01', '0 days 00:00:02',
		                '0 days 00:00:03', '0 days 00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
	static public var value_label_mismatch_doc : Dynamic;
}