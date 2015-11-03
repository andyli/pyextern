/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata", "StataReader") extern class StataReader {
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
		enter context manager 
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		exit context manager 
	**/
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
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
	public function ___init__(path_or_buf:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_buf:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic):Void;
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
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
	public function _calcsize(fmt:Dynamic):Dynamic;
	public function _decode(s:Dynamic):Dynamic;
	public function _decode_bytes(str:Dynamic, ?errors:Dynamic):Dynamic;
	static public var _default_encoding : Dynamic;
	/**
		Converts categorical columns to Categorical type.
	**/
	public function _do_convert_categoricals(data:Dynamic, value_label_dict:Dynamic, lbllist:Dynamic, order_categoricals:Dynamic):Dynamic;
	public function _do_convert_missing(data:Dynamic, convert_missing:Dynamic):Dynamic;
	public function _do_select_columns(data:Dynamic, columns:Dynamic):Dynamic;
	public function _get_data_label():Dynamic;
	public function _get_dtypes(seek_vartypes:Dynamic):Dynamic;
	public function _get_fmtlist():Dynamic;
	public function _get_lbllist():Dynamic;
	public function _get_nobs():Dynamic;
	public function _get_seek_variable_labels():Dynamic;
	public function _get_time_stamp():Dynamic;
	public function _get_varlist():Dynamic;
	public function _get_vlblist():Dynamic;
	public function _insert_strls(data:Dynamic):Dynamic;
	public function _null_terminate(s:Dynamic):Dynamic;
	public function _read_header():Dynamic;
	public function _read_new_header(first_char:Dynamic):Dynamic;
	public function _read_old_header(first_char:Dynamic):Dynamic;
	public function _read_strls():Dynamic;
	public function _read_value_labels():Dynamic;
	/**
		close the handle if its open 
	**/
	public function close():Dynamic;
	/**
		DEPRECATED: Reads observations from Stata file, converting them into a dataframe
		
		This is a legacy method.  Use `read` in new code.
		
		Parameters
		----------
		convert_dates : boolean, defaults to True
		    Convert date variables to DataFrame time values
		convert_categoricals : boolean, defaults to True
		    Read value labels and convert columns to Categorical/Factor variables
		index : identifier of index column
		    identifier of column that should be used as index of the DataFrame
		convert_missing : boolean, defaults to False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nans.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : boolean, defaults to True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64)
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns
		order_categoricals : boolean, defaults to True
		    Flag indicating whether converted categorical data are ordered.
		
		Returns
		-------
		DataFrame
	**/
	public function data(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns data label of Stata file
	**/
	public function data_label():Dynamic;
	/**
		Reads lines from Stata file and returns as dataframe
		
		Parameters
		----------
		size : int, defaults to None
		    Number of lines to read.  If None, reads whole file.
		
		Returns
		-------
		DataFrame
	**/
	public function get_chunk(?size:Dynamic):Dynamic;
	/**
		Reads observations from Stata file, converting them into a dataframe
		
		Parameters
		----------
		nrows : int
		    Number of lines to read from data file, if None read whole file.
		convert_dates : boolean, defaults to True
		    Convert date variables to DataFrame time values
		convert_categoricals : boolean, defaults to True
		    Read value labels and convert columns to Categorical/Factor variables
		index : identifier of index column
		    identifier of column that should be used as index of the DataFrame
		convert_missing : boolean, defaults to False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nans.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : boolean, defaults to True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64)
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns
		order_categoricals : boolean, defaults to True
		    Flag indicating whether converted categorical data are ordered.
		
		Returns
		-------
		DataFrame
	**/
	public function read(?nrows:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic):Dynamic;
	/**
		Returns a dict, associating each variable name a dict, associating
		each value its corresponding label
	**/
	public function value_labels():Dynamic;
	/**
		Returns variable labels as a dict, associating each variable name
		with corresponding label
	**/
	public function variable_labels():Dynamic;
}