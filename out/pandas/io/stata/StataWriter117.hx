/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata", "StataWriter117") extern class StataWriter117 {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(fname:Dynamic, data:Dynamic, ?convert_dates:Dynamic, ?write_index:Dynamic, ?encoding:Dynamic, ?byteorder:Dynamic, ?time_stamp:Dynamic, ?data_label:Dynamic, ?variable_labels:Dynamic, ?convert_strl:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fname:Dynamic, data:Dynamic, ?convert_dates:Dynamic, ?write_index:Dynamic, ?encoding:Dynamic, ?byteorder:Dynamic, ?time_stamp:Dynamic, ?data_label:Dynamic, ?variable_labels:Dynamic, ?convert_strl:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Checks column names to ensure that they are valid Stata column names.
		This includes checks for:
		    * Non-string names
		    * Stata keywords
		    * Variables that start with numbers
		    * Variables with names that are too long
		
		When an illegal variable name is detected, it is converted, and if
		dates are exported, the variable name is propagated to the date
		conversion dictionary
	**/
	public function _check_column_names(data:Dynamic):Dynamic;
	/**
		Close the file if it was created by the writer.
		
		If a buffer or file-like object was passed in, for example a GzipFile,
		then leave this file open for the caller to close. In either case,
		attempt to flush the file contents to ensure they are written to disk
		(if supported)
	**/
	public function _close():Dynamic;
	/**
		Convert columns to StrLs if either very large or in the
		convert_strl variable
	**/
	public function _convert_strls(data:Dynamic):Dynamic;
	static public var _max_string_length : Dynamic;
	public function _null_terminate(s:Dynamic, ?as_string:Dynamic):Dynamic;
	/**
		Check for categorical columns, retain categorical information for
		Stata file and convert categorical data to int
	**/
	public function _prepare_categoricals(data:Dynamic):Dynamic;
	public function _prepare_data():Dynamic;
	public function _prepare_pandas(data:Dynamic):Dynamic;
	/**
		Checks floating point data columns for nans, and replaces these with
		the generic Stata for missing value (.)
	**/
	public function _replace_nans(data:Dynamic):Dynamic;
	public function _set_formats_and_types(data:Dynamic, dtypes:Dynamic):Dynamic;
	/**
		Surround val with <tag></tag>
	**/
	static public function _tag(val:Dynamic, tag:Dynamic):Dynamic;
	/**
		Update map location for tag with file position
	**/
	public function _update_map(tag:Dynamic):Dynamic;
	/**
		Update column names for conversion to strl if they might have been
		changed to comply with Stata naming rules
	**/
	public function _update_strl_names():Dynamic;
	/**
		Helper to call encode before writing to file for Python 3 compat.
	**/
	public function _write(to_write:Dynamic):Dynamic;
	/**
		No-op, future compatibility
	**/
	public function _write_characteristics():Dynamic;
	public function _write_data():Dynamic;
	/**
		No-op in dta 117+
	**/
	public function _write_expansion_fields():Dynamic;
	/**
		No-op, future compatibility
	**/
	public function _write_file_close_tag():Dynamic;
	public function _write_formats():Dynamic;
	/**
		Write the file header
	**/
	public function _write_header(?data_label:Dynamic, ?time_stamp:Dynamic):Dynamic;
	/**
		Called twice during file write. The first populates the values in
		the map with 0s.  The second call writes the final map locations when
		all blocks have been written.
	**/
	public function _write_map():Dynamic;
	public function _write_sortlist():Dynamic;
	/**
		No-op, future compatibility
	**/
	public function _write_strls():Dynamic;
	public function _write_value_label_names():Dynamic;
	public function _write_value_labels():Dynamic;
	public function _write_variable_labels():Dynamic;
	public function _write_variable_types():Dynamic;
	public function _write_varnames():Dynamic;
	public function write_file():Dynamic;
}