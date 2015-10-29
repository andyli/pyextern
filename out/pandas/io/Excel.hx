/* This file is generated, do not edit! */
package pandas.io;
@:pythonImport("pandas.io.excel") extern class Excel {
	/**
		Converts lists of lists/tuples into DataFrames with proper type inference
		and optional (e.g. string to datetime) conversion. Also enables iterating
		lazily over chunks of large files
		
		Parameters
		----------
		data : file-like object or list
		delimiter : separator character to use
		dialect : str or csv.Dialect instance, default None
		    Ignored if delimiter is longer than 1 character
		names : sequence, default
		header : int, default 0
		    Row to use to parse column labels. Defaults to the first row. Prior
		    rows will be discarded
		index_col : int or list, default None
		    Column or columns to use as the (possibly hierarchical) index
		has_index_names: boolean, default False
		    True if the cols defined in index_col have an index name and are
		    not in the header
		na_values : iterable, default None
		    Custom NA values
		keep_default_na : bool, default True
		thousands : str, default None
		    Thousands separator
		comment : str, default None
		    Comment out remainder of line
		parse_dates : boolean, default False
		keep_date_col : boolean, default False
		date_parser : function, default None
		skiprows : list of integers
		    Row numbers to skip
		skip_footer : int
		    Number of line at bottom of file to skip
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the cell (not column) content, and return the
		    transformed content.
		encoding : string, default None
		    Encoding to use for UTF when reading/writing (ex. 'utf-8')
		squeeze : boolean, default False
		    returns Series if only one column
		infer_datetime_format: boolean, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		float_precision : string, default None
		    Specifies which converter the C engine should use for floating-point
		    values. The options are None for the ordinary converter,
		    'high' for the high-precision converter, and 'round_trip' for the
		    round-trip converter.
	**/
	static public function TextParser(args:Dynamic, kwds:Dynamic):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _conv_value(val:Dynamic):Dynamic;
	static public function _fill_mi_header(row:Dynamic):Dynamic;
	/**
		Check to see if a URL has a valid protocol.
		
		Parameters
		----------
		url : str or unicode
		
		Returns
		-------
		isurl : bool
		    If `url` has a valid protocol return True otherwise False.
	**/
	static public function _is_url(url:Dynamic):Dynamic;
	/**
		(header, new_data) for header rows in MultiIndex parsing
	**/
	static public function _pop_header_name(row:Dynamic, index_col:Dynamic):Dynamic;
	static public function _trim_excel_header(row:Dynamic):Dynamic;
	static public function _urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public function _validate_header_arg(header:Dynamic):Dynamic;
	static public var _writer_extensions : Dynamic;
	static public var _writers : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	static public function get_writer(engine_name:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Read an Excel table into a pandas DataFrame
		
		Parameters
		----------
		io : string, file-like object, pandas ExcelFile, or xlrd workbook.
		    The string could be a URL. Valid URL schemes include http, ftp, s3,
		    and file. For file URLs, a host is expected. For instance, a local
		    file could be file://localhost/path/to/workbook.xlsx
		sheetname : string, int, mixed list of strings/ints, or None, default 0
		
		    Strings are used for sheet names, Integers are used in zero-indexed sheet
		    positions.
		
		    Lists of strings/integers are used to request multiple sheets.
		
		    Specify None to get all sheets.
		
		    str|int -> DataFrame is returned.
		    list|None -> Dict of DataFrames is returned, with keys representing sheets.
		
		    Available Cases
		
		    * Defaults to 0 -> 1st sheet as a DataFrame
		    * 1 -> 2nd sheet as a DataFrame
		    * "Sheet1" -> 1st sheet as a DataFrame
		    * [0,1,"Sheet5"] -> 1st, 2nd & 5th sheet as a dictionary of DataFrames
		    * None -> All sheets as a dictionary of DataFrames
		
		header : int, list of ints, default 0
		    Row (0-indexed) to use for the column labels of the parsed
		    DataFrame. If a list of integers is passed those row positions will
		    be combined into a ``MultiIndex``
		skiprows : list-like
		    Rows to skip at the beginning (0-indexed)
		skip_footer : int, default 0
		    Rows at the end to skip (0-indexed)
		index_col : int, list of ints, default None
		    Column (0-indexed) to use as the row labels of the DataFrame.
		    Pass None if there is no such column.  If a list is passed,
		    those columns will be combined into a ``MultiIndex``
		converters : dict, default None
		    Dict of functions for converting values in certain columns. Keys can
		    either be integers or column labels, values are functions that take one
		    input argument, the Excel cell content, and return the transformed
		    content.
		parse_cols : int or list, default None
		    * If None then parse all columns,
		    * If int then indicates last column to be parsed
		    * If list of ints then indicates list of column numbers to be parsed
		    * If string then indicates comma separated list of column names and
		      column ranges (e.g. "A:E" or "A,C,E:F")
		na_values : list-like, default None
		    List of additional strings to recognize as NA/NaN
		thousands : str, default None
		    Thousands separator for parsing string columns to numeric.  Note that
		    this parameter is only necessary for columns stored as TEXT in Excel,
		    any numeric columns will automatically be parsed, regardless of display
		    format.
		keep_default_na : bool, default True
		    If na_values are specified and keep_default_na is False the default NaN
		    values are overridden, otherwise they're appended to
		verbose : boolean, default False
		    Indicate number of NA values placed in non-numeric columns
		engine: string, default None
		    If io is not a buffer or path, this must be set to identify io.
		    Acceptable values are None or xlrd
		convert_float : boolean, default True
		    convert integral floats to int (i.e., 1.0 --> 1). If False, all numeric
		    data will be read in as floats: Excel stores all numbers as floats
		    internally
		has_index_names : boolean, default None
		    DEPRECATED: for version 0.17+ index names will be automatically inferred
		    based on index_col.  To read Excel output from 0.16.2 and prior that
		    had saved index names, use True.
		
		Returns
		-------
		parsed : DataFrame or Dict of DataFrames
		    DataFrame from the passed in Excel file.  See notes in sheetname argument
		    for more information on when a Dict of Dataframes is returned.
	**/
	static public function read_excel(io:Dynamic, ?sheetname:Dynamic, ?header:Dynamic, ?skiprows:Dynamic, ?skip_footer:Dynamic, ?index_col:Dynamic, ?parse_cols:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?na_values:Dynamic, ?thousands:Dynamic, ?convert_float:Dynamic, ?has_index_names:Dynamic, ?converters:Dynamic, ?engine:Dynamic, kwds:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Adds engine to the excel writer registry. You must use this method to
		integrate with ``to_excel``. Also adds config options for any new
		``supported_extensions`` defined on the writer.
	**/
	static public function register_writer(klass:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}