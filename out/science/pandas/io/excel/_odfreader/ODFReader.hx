/* This file is generated, do not edit! */
package pandas.io.excel._odfreader;
@:pythonImport("pandas.io.excel._odfreader", "ODFReader") extern class ODFReader {
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
	public function ___init__(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filepath_or_buffer:Dynamic, ?storage_options:Dynamic):Void;
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
	static public var _abc_impl : Dynamic;
	/**
		Find and decode OpenDocument text:s tags that represent
		a run length encoded sequence of space characters.
	**/
	public function _get_cell_string_value(cell:Dynamic):Dynamic;
	public function _get_cell_value(cell:Dynamic, convert_float:Dynamic):Dynamic;
	public function _get_column_repeat(cell:Dynamic):Dynamic;
	/**
		Return number of times this row was repeated
		Repeating an empty row appeared to be a common way
		of representing sparse rows in the table.
	**/
	public function _get_row_repeat(row:Dynamic):Dynamic;
	/**
		Helper function to find empty rows
	**/
	public function _is_empty_row(row:Dynamic):Dynamic;
	public var _workbook_class : Dynamic;
	public function close():Dynamic;
	/**
		Property for compat with other readers.
	**/
	public var empty_value : Dynamic;
	public function get_sheet_by_index(index:Dynamic):Dynamic;
	public function get_sheet_by_name(name:Dynamic):Dynamic;
	/**
		Parse an ODF Table into a list of lists
	**/
	public function get_sheet_data(sheet:Dynamic, convert_float:Dynamic):Dynamic;
	public function load_workbook(filepath_or_buffer:Dynamic):Dynamic;
	public function parse(?sheet_name:Dynamic, ?header:Dynamic, ?names:Dynamic, ?index_col:Dynamic, ?usecols:Dynamic, ?squeeze:Dynamic, ?dtype:Dynamic, ?true_values:Dynamic, ?false_values:Dynamic, ?skiprows:Dynamic, ?nrows:Dynamic, ?na_values:Dynamic, ?verbose:Dynamic, ?parse_dates:Dynamic, ?date_parser:Dynamic, ?thousands:Dynamic, ?decimal:Dynamic, ?comment:Dynamic, ?skipfooter:Dynamic, ?convert_float:Dynamic, ?mangle_dupe_cols:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function raise_if_bad_sheet_by_index(index:Dynamic):Dynamic;
	public function raise_if_bad_sheet_by_name(name:Dynamic):Dynamic;
	/**
		Return a list of sheet names present in the document
	**/
	public var sheet_names : Dynamic;
}