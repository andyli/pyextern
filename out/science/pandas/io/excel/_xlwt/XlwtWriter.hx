/* This file is generated, do not edit! */
package pandas.io.excel._xlwt;
@:pythonImport("pandas.io.excel._xlwt", "XlwtWriter") extern class XlwtWriter {
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
	public function ___init__(path:Dynamic, ?engine:Dynamic, ?date_format:Dynamic, ?datetime_format:Dynamic, ?encoding:Dynamic, ?mode:Dynamic, ?storage_options:Dynamic, ?if_sheet_exists:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path:Dynamic, ?engine:Dynamic, ?date_format:Dynamic, ?datetime_format:Dynamic, ?encoding:Dynamic, ?mode:Dynamic, ?storage_options:Dynamic, ?if_sheet_exists:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __new__(cls:Dynamic, path:Dynamic, ?engine:Dynamic, ?date_format:Dynamic, ?datetime_format:Dynamic, ?mode:Dynamic, ?storage_options:Dynamic, ?if_sheet_exists:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		converts a style_dict to an xlwt style object
		
		Parameters
		----------
		style_dict : style dictionary to convert
		num_format_str : optional number format string
	**/
	static public function _convert_to_style(style_dict:Dynamic, ?num_format_str:Dynamic):Dynamic;
	public function _get_sheet_name(sheet_name:Dynamic):Dynamic;
	/**
		helper which recursively generate an xlwt easy style string
		for example:
		
		    hstyle = {"font": {"bold": True},
		    "border": {"top": "thin",
		            "right": "thin",
		            "bottom": "thin",
		            "left": "thin"},
		    "align": {"horiz": "center"}}
		    will be converted to
		    font: bold on;                     border: top thin, right thin, bottom thin, left thin;                     align: horiz center;
	**/
	static public function _style_to_xlwt(item:Dynamic, ?firstlevel:Dynamic, ?field_sep:Dynamic, ?line_sep:Dynamic):Dynamic;
	/**
		Convert numpy types to Python types for the Excel writers.
		
		Parameters
		----------
		val : object
		    Value to be written into cells
		
		Returns
		-------
		Tuple with the first element being the converted value and the second
		    being an optional format
	**/
	public function _value_with_fmt(val:Dynamic):Dynamic;
	/**
		checks that path's extension against the Writer's supported
		extensions.  If it isn't supported, raises UnsupportedFiletypeError.
	**/
	static public function check_extension(ext:Dynamic):Dynamic;
	/**
		synonym for save, to make it more file-like
	**/
	public function close():Dynamic;
	static public var engine : Dynamic;
	static public var path : Dynamic;
	/**
		Save workbook to disk.
	**/
	public function save():Dynamic;
	static public var supported_extensions : Dynamic;
	/**
		Write given formatted cells into Excel an excel sheet
		
		Parameters
		----------
		cells : generator
		    cell of formatted data to save to Excel sheet
		sheet_name : str, default None
		    Name of Excel sheet, if None, then use self.cur_sheet
		startrow : upper left cell row to dump data frame
		startcol : upper left cell column to dump data frame
		freeze_panes: int tuple of length 2
		    contains the bottom-most row and right-most column to freeze
	**/
	public function write_cells(cells:Dynamic, ?sheet_name:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?freeze_panes:Dynamic):Dynamic;
}