/* This file is generated, do not edit! */
package pandas.io.parsers.base_parser;
@:pythonImport("pandas.io.parsers.base_parser", "ParserBase") extern class ParserBase {
	/**
		An enumeration.
	**/
	static public function BadLineHandleMethod(value:Dynamic, ?names:Dynamic, ?module:Dynamic, ?qualname:Dynamic, ?type:Dynamic, ?start:Dynamic):Dynamic;
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
	public function ___init__(kwds:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(kwds:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
	public function _agg_index(index:Dynamic, ?try_parse_dates:Dynamic):Dynamic;
	/**
		Cast values to specified type
		
		Parameters
		----------
		values : ndarray
		cast_type : string or np.dtype
		   dtype to cast values to
		column : string
		    column name - used only for error reporting
		
		Returns
		-------
		converted : ndarray
	**/
	public function _cast_types(values:Dynamic, cast_type:Dynamic, column:Dynamic):numpy.Ndarray;
	/**
		Checks if length of data is equal to length of column names.
		
		One set of trailing commas is allowed. self.index_col not False
		results in a ParserError previously when lengths do not match.
		
		Parameters
		----------
		columns: list of column names
		data: list of array-likes containing the data column-wise.
	**/
	public function _check_data_length(columns:Dynamic, data:Dynamic):Dynamic;
	public function _clean_index_names(columns:Dynamic, index_col:Dynamic, unnamed_cols:Dynamic):Dynamic;
	/**
		converts col numbers to names
	**/
	public function _clean_mapping(mapping:Dynamic):Dynamic;
	public function _convert_to_ndarrays(dct:Dynamic, na_values:Dynamic, na_fvalues:Dynamic, ?verbose:Dynamic, ?converters:Dynamic, ?dtypes:Dynamic):Dynamic;
	public function _do_date_conversions(names:Dynamic, data:Dynamic):Dynamic;
	/**
		Check whether or not the 'usecols' parameter
		is a callable.  If so, enumerates the 'names'
		parameter and returns a set of indices for
		each entry in 'names' that evaluates to True.
		If not a callable, returns 'usecols'.
	**/
	public function _evaluate_usecols(usecols:Dynamic, names:Dynamic):Dynamic;
	/**
		Extract and return the names, index_names, col_names if the column
		names are a MultiIndex.
		
		Parameters
		----------
		header: list of lists
		    The header rows
		index_names: list, optional
		    The names of the future index
		passed_names: bool, default False
		    A flag specifying if names where passed
	**/
	public function _extract_multi_indexer_columns(header:Dynamic, index_names:Dynamic, ?passed_names:Dynamic):Dynamic;
	public function _get_complex_date_index(data:Dynamic, col_names:Dynamic):Dynamic;
	public function _get_empty_meta(columns:Dynamic, index_col:Dynamic, index_names:Dynamic, ?dtype:Dynamic):Dynamic;
	public function _get_simple_index(data:Dynamic, columns:Dynamic):Dynamic;
	public var _has_complex_date_col : Dynamic;
	static public var _implicit_index : Dynamic;
	/**
		Infer types of values, possibly casting
		
		Parameters
		----------
		values : ndarray
		na_values : set
		try_num_bool : bool, default try
		   try to cast values to numeric (first preference) or boolean
		
		Returns
		-------
		converted : ndarray
		na_count : int
	**/
	public function _infer_types(values:Dynamic, na_values:Dynamic, ?try_num_bool:Dynamic):Dynamic;
	public function _make_index(data:Dynamic, alldata:Dynamic, columns:Dynamic, ?indexnamerow:Dynamic):Dynamic;
	public function _maybe_dedup_names(names:Dynamic):Dynamic;
	public function _maybe_make_multi_index_columns(columns:Dynamic, ?col_names:Dynamic):Dynamic;
	/**
		Set the columns that should not undergo dtype conversions.
		
		Currently, any column that is involved with date parsing will not
		undergo such conversions. If usecols is specified, the positions of the columns
		not to cast is relative to the usecols not to all columns.
		
		Parameters
		----------
		col_indices: The indices specifying order and positions of the columns
		names: The column names which order is corresponding with the order
		       of col_indices
		
		Returns
		-------
		A set of integers containing the positions of the columns not to convert.
	**/
	public function _set_noconvert_dtype_columns(col_indices:Dynamic, names:Dynamic):Dynamic;
	public function _should_parse_dates(i:Dynamic):Dynamic;
	/**
		Check if parse_dates are in columns.
		
		If user has provided names for parse_dates, check if those columns
		are available.
		
		Parameters
		----------
		columns : list
		    List of names of the dataframe.
		
		Returns
		-------
		The names of the columns which will get parsed later if a dict or list
		is given as specification.
		
		Raises
		------
		ValueError
		    If column to parse_date is not in dataframe.
	**/
	public function _validate_parse_dates_presence(columns:Dynamic):Dynamic;
	/**
		Validate the 'usecols' parameter.
		
		Checks whether or not the 'usecols' parameter contains all integers
		(column selection by index), strings (column by name) or is a callable.
		Raises a ValueError if that is not the case.
		
		Parameters
		----------
		usecols : list-like, callable, or None
		    List of columns to use when parsing or a callable that can be used
		    to filter a list of table columns.
		
		Returns
		-------
		usecols_tuple : tuple
		    A tuple of (verified_usecols, usecols_dtype).
		
		    'verified_usecols' is either a set if an array-like is passed in or
		    'usecols' if a callable or None is passed in.
		
		    'usecols_dtype` is the inferred dtype of 'usecols' if an array-like
		    is passed in or None if a callable or None is passed in.
	**/
	public function _validate_usecols_arg(usecols:Dynamic):python.Tuple<Dynamic>;
	/**
		Validates that all usecols are present in a given
		list of names. If not, raise a ValueError that
		shows what usecols are missing.
		
		Parameters
		----------
		usecols : iterable of usecols
		    The columns to validate are present in names.
		names : iterable of names
		    The column names to check against.
		
		Returns
		-------
		usecols : iterable of usecols
		    The `usecols` parameter if the validation succeeds.
		
		Raises
		------
		ValueError : Columns were missing. Error message will list them.
	**/
	public function _validate_usecols_names(usecols:Dynamic, names:Dynamic):Dynamic;
	public function close():Dynamic;
}