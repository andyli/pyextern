/* This file is generated, do not edit! */
package pandas.io.excel;
@:pythonImport("pandas.io.excel", "_OpenpyxlWriter") extern class _OpenpyxlWriter {
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(path:Dynamic, ?engine:Dynamic, ?engine_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path:Dynamic, ?engine:Dynamic, ?engine_kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __new__(cls:Dynamic, path:Dynamic, ?engine:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Convert ``alignment_dict`` to an openpyxl v2 Alignment object
		Parameters
		----------
		alignment_dict : dict
		    A dict with zero or more of the following keys (or their synonyms).
		        'horizontal'
		        'vertical'
		        'text_rotation'
		        'wrap_text'
		        'shrink_to_fit'
		        'indent'
		Returns
		-------
		alignment : openpyxl.styles.Alignment
	**/
	static public function _convert_to_alignment(alignment_dict:Dynamic):Dynamic;
	/**
		Convert ``border_dict`` to an openpyxl v2 Border object
		Parameters
		----------
		border_dict : dict
		    A dict with zero or more of the following keys (or their synonyms).
		        'left'
		        'right'
		        'top'
		        'bottom'
		        'diagonal'
		        'diagonal_direction'
		        'vertical'
		        'horizontal'
		        'diagonalUp' ('diagonalup')
		        'diagonalDown' ('diagonaldown')
		        'outline'
		Returns
		-------
		border : openpyxl.styles.Border
	**/
	static public function _convert_to_border(border_dict:Dynamic):Dynamic;
	/**
		Convert ``color_spec`` to an openpyxl v2 Color object
		Parameters
		----------
		color_spec : str, dict
		    A 32-bit ARGB hex string, or a dict with zero or more of the
		    following keys.
		        'rgb'
		        'indexed'
		        'auto'
		        'theme'
		        'tint'
		        'index'
		        'type'
		Returns
		-------
		color : openpyxl.styles.Color
	**/
	static public function _convert_to_color(color_spec:Dynamic):Dynamic;
	/**
		Convert ``fill_dict`` to an openpyxl v2 Fill object
		Parameters
		----------
		fill_dict : dict
		    A dict with one or more of the following keys (or their synonyms),
		        'fill_type' ('patternType', 'patterntype')
		        'start_color' ('fgColor', 'fgcolor')
		        'end_color' ('bgColor', 'bgcolor')
		    or one or more of the following keys (or their synonyms).
		        'type' ('fill_type')
		        'degree'
		        'left'
		        'right'
		        'top'
		        'bottom'
		        'stop'
		Returns
		-------
		fill : openpyxl.styles.Fill
	**/
	static public function _convert_to_fill(fill_dict:Dynamic):Dynamic;
	/**
		Convert ``font_dict`` to an openpyxl v2 Font object
		Parameters
		----------
		font_dict : dict
		    A dict with zero or more of the following keys (or their synonyms).
		        'name'
		        'size' ('sz')
		        'bold' ('b')
		        'italic' ('i')
		        'underline' ('u')
		        'strikethrough' ('strike')
		        'color'
		        'vertAlign' ('vertalign')
		        'charset'
		        'scheme'
		        'family'
		        'outline'
		        'shadow'
		        'condense'
		Returns
		-------
		font : openpyxl.styles.Font
	**/
	static public function _convert_to_font(font_dict:Dynamic):Dynamic;
	/**
		Convert ``number_format_dict`` to an openpyxl v2.1.0 number format
		initializer.
		Parameters
		----------
		number_format_dict : dict
		    A dict with zero or more of the following keys.
		        'format_code' : str
		Returns
		-------
		number_format : str
	**/
	static public function _convert_to_number_format(number_format_dict:Dynamic):Dynamic;
	/**
		Convert ``protection_dict`` to an openpyxl v2 Protection object.
		Parameters
		----------
		protection_dict : dict
		    A dict with zero or more of the following keys.
		        'locked'
		        'hidden'
		Returns
		-------
	**/
	static public function _convert_to_protection(protection_dict:Dynamic):Dynamic;
	/**
		Convert ``side_spec`` to an openpyxl v2 Side object
		Parameters
		----------
		side_spec : str, dict
		    A string specifying the border style, or a dict with zero or more
		    of the following keys (or their synonyms).
		        'style' ('border_style')
		        'color'
		Returns
		-------
		side : openpyxl.styles.Side
	**/
	static public function _convert_to_side(side_spec:Dynamic):Dynamic;
	/**
		Convert ``stop_seq`` to a list of openpyxl v2 Color objects,
		suitable for initializing the ``GradientFill`` ``stop`` parameter.
		Parameters
		----------
		stop_seq : iterable
		    An iterable that yields objects suitable for consumption by
		    ``_convert_to_color``.
		Returns
		-------
		stop : list of openpyxl.styles.Color
	**/
	static public function _convert_to_stop(stop_seq:Dynamic):Dynamic;
	/**
		converts a style_dict to an openpyxl style object
		Parameters
		----------
		style_dict: style dictionary to convert
	**/
	static public function _convert_to_style(style_dict:Dynamic):Dynamic;
	/**
		Convert a style_dict to a set of kwargs suitable for initializing
		or updating-on-copy an openpyxl v2 style object
		Parameters
		----------
		style_dict : dict
		    A dict with zero or more of the following keys (or their synonyms).
		        'font'
		        'fill'
		        'border' ('borders')
		        'alignment'
		        'number_format'
		        'protection'
		Returns
		-------
		style_kwargs : dict
		    A dict with the same, normalized keys as ``style_dict`` but each
		    value has been replaced with a native openpyxl style object of the
		    appropriate class.
	**/
	static public function _convert_to_style_kwargs(style_dict:Dynamic):python.Dict<Dynamic, Dynamic>;
	public function _get_sheet_name(sheet_name:Dynamic):Dynamic;
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
	static public var book : Dynamic;
	/**
		checks that path's extension against the Writer's supported
		extensions.  If it isn't supported, raises UnsupportedFiletypeError.
	**/
	static public function check_extension(ext:Dynamic):Dynamic;
	/**
		synonym for save, to make it more file-like
	**/
	public function close():Dynamic;
	static public var curr_sheet : Dynamic;
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
		sheet_name : string, default None
		    Name of Excel sheet, if None, then use self.cur_sheet
		startrow: upper left cell row to dump data frame
		startcol: upper left cell column to dump data frame
		freeze_panes: integer tuple of length 2
		    contains the bottom-most row and right-most column to freeze
	**/
	public function write_cells(cells:Dynamic, ?sheet_name:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?freeze_panes:Dynamic):Dynamic;
}