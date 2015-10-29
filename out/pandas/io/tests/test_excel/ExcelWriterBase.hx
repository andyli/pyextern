/* This file is generated, do not edit! */
package pandas.io.tests.test_excel;
@:pythonImport("pandas.io.tests.test_excel", "ExcelWriterBase") extern class ExcelWriterBase {
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
	public function __init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Obtain the reference data from read_csv with the Python engine.
		Test data path is defined by pandas.util.testing.get_data_path()
		
		Parameters
		----------
		
		basename : str
		    File base name, excluding file extension.
		
		Returns
		-------
		
		dfref : DataFrame
	**/
	public function get_csv_refdf(basename:Dynamic):Dynamic;
	/**
		Return test data DataFrame. Test data path is defined by
		pandas.util.testing.get_data_path()
		
		Parameters
		----------
		
		basename : str
		    File base name, excluding file extension.
		
		Returns
		-------
		
		df : DataFrame
	**/
	public function get_exceldf(basename:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Return test data ExcelFile instance. Test data path is defined by
		pandas.util.testing.get_data_path()
		
		Parameters
		----------
		
		basename : str
		    File base name, excluding file extension.
		
		Returns
		-------
		
		excel : io.excel.ExcelFile
	**/
	public function get_excelfile(basename:Dynamic):Dynamic;
	static public var merge_cells : Dynamic;
	public function setUp():Dynamic;
	public function tearDown():Dynamic;
	public function test_basics_with_nan():Dynamic;
	public function test_bool_types():Dynamic;
	public function test_bytes_io():Dynamic;
	public function test_colaliases():Dynamic;
	public function test_datetimes():Dynamic;
	public function test_duplicated_columns():Dynamic;
	public function test_excel_010_hemstring():Dynamic;
	public function test_excel_010_hemstring_raises_NotImplementedError():Dynamic;
	public function test_excel_date_datetime_format():Dynamic;
	public function test_excel_roundtrip_datetime():Dynamic;
	public function test_excel_roundtrip_indexname():Dynamic;
	public function test_excel_sheet_by_name_raise():Dynamic;
	public function test_excelwriter_contextmanager():Dynamic;
	public function test_float_types():Dynamic;
	public function test_inf_roundtrip():Dynamic;
	public function test_int_types():Dynamic;
	public function test_mixed():Dynamic;
	public function test_roundtrip():Dynamic;
	public function test_roundtrip_indexlabels():Dynamic;
	public function test_sheets():Dynamic;
	public function test_swapped_columns():Dynamic;
	public function test_to_excel_float_format():Dynamic;
	public function test_to_excel_multiindex():Dynamic;
	public function test_to_excel_multiindex_dates():Dynamic;
	public function test_to_excel_multiindex_no_write_index():Dynamic;
	public function test_to_excel_output_encoding():Dynamic;
	public function test_to_excel_periodindex():Dynamic;
	public function test_to_excel_unicode_filename():Dynamic;
	public function test_tsframe():Dynamic;
	public function test_write_lists_dict():Dynamic;
}