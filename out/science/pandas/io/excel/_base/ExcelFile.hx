/* This file is generated, do not edit! */
package pandas.io.excel._base;
@:pythonImport("pandas.io.excel._base", "ExcelFile") extern class ExcelFile {
	/**
		Read tables out of OpenDocument formatted files.
		
		Parameters
		----------
		filepath_or_buffer : str, path to be parsed or
		    an open readable stream.
		storage_options : dict, optional
		    passed to fsspec for appropriate URLs (see ``_get_filepath_or_buffer``)
	**/
	static public function ODFReader(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public function OpenpyxlReader(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public function PyxlsbReader(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public function XlrdReader(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	public function __fspath__():Dynamic;
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
	public function ___init__(path_or_buffer:Dynamic, ?engine:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_buffer:Dynamic, ?engine:Dynamic, ?storage_options:Dynamic):Void;
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
	static public var _engines : Dynamic;
	public var book : Dynamic;
	/**
		close io if necessary
	**/
	public function close():Dynamic;
	/**
		Parse specified sheet(s) into a DataFrame.
		
		Equivalent to read_excel(ExcelFile, ...)  See the read_excel
		docstring for more info on accepted parameters.
		
		Returns
		-------
		DataFrame or dict of DataFrames
		    DataFrame from the passed in Excel file.
	**/
	public function parse(?sheet_name:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?converters:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?thousands:Dynamic, ?comment:Dynamic, ?skipfooter:Dynamic, ?convert_float:Dynamic, ?mangle_dupe_cols:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public var sheet_names : Dynamic;
}