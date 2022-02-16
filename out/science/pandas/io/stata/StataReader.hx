/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata", "StataReader") extern class StataReader {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(path_or_buf:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_buf:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Void;
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
		Return the next item from the iterator. When exhausted, raise StopIteration
	**/
	public function __next__():Dynamic;
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
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	public function _calcsize(fmt:Dynamic):Dynamic;
	public function _decode(s:Dynamic):Dynamic;
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
	public function _get_variable_labels():Dynamic;
	public function _get_varlist():Dynamic;
	public function _insert_strls(data:Dynamic):Dynamic;
	public function _read_header():Dynamic;
	public function _read_new_header():Dynamic;
	public function _read_old_header(first_char:Dynamic):Dynamic;
	public function _read_strls():Dynamic;
	public function _read_value_labels():Dynamic;
	/**
		Set string encoding which depends on file version
	**/
	public function _set_encoding():Dynamic;
	/**
		Map between numpy and state dtypes
	**/
	public function _setup_dtype():Dynamic;
	/**
		close the handle if its open
	**/
	public function close():Dynamic;
	/**
		Return data label of Stata file.
	**/
	public var data_label : Dynamic;
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
		
		Returns
		-------
		DataFrame
	**/
	public function read(?nrows:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?index_col:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic):Dynamic;
	/**
		Return a dict, associating each variable name a dict, associating
		each value its corresponding label.
		
		Returns
		-------
		dict
	**/
	public function value_labels():Dynamic;
	/**
		Return variable labels as a dict, associating each variable name
		with corresponding label.
		
		Returns
		-------
		dict
	**/
	public function variable_labels():Dynamic;
}