/* This file is generated, do not edit! */
package pandas.io.tests.test_excel;
@:pythonImport("pandas.io.tests.test_excel", "XlrdTests") extern class XlrdTests {
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
	public function setUp():Dynamic;
	public function test_creating_and_reading_multiple_sheets():Dynamic;
	public function test_excel_cell_error_na():Dynamic;
	public function test_excel_multindex_roundtrip():Dynamic;
	public function test_excel_oldindex_format():Dynamic;
	public function test_excel_passes_na():Dynamic;
	public function test_excel_read_buffer():Dynamic;
	public function test_excel_stop_iterator():Dynamic;
	public function test_excel_table():Dynamic;
	public function test_excel_table_sheet_by_index():Dynamic;
	public function test_parse_cols_int():Dynamic;
	public function test_parse_cols_list():Dynamic;
	public function test_parse_cols_str():Dynamic;
	public function test_read_excel_blank():Dynamic;
	public function test_read_excel_blank_with_header():Dynamic;
	public function test_read_excel_bool_header_arg():Dynamic;
	public function test_read_excel_chunksize():Dynamic;
	public function test_read_excel_multiindex():Dynamic;
	public function test_read_from_file_url():Dynamic;
	public function test_read_from_http_url():Dynamic;
	public function test_read_xlrd_Book():Dynamic;
	public function test_reader_closes_file():Dynamic;
	public function test_reader_converters():Dynamic;
	public function test_reader_seconds():Dynamic;
	public function test_reader_special_dtypes():Dynamic;
	public function test_reading_all_sheets():Dynamic;
	public function test_reading_multiple_specific_sheets():Dynamic;
}