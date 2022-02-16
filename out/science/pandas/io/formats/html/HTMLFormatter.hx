/* This file is generated, do not edit! */
package pandas.io.formats.html;
@:pythonImport("pandas.io.formats.html", "HTMLFormatter") extern class HTMLFormatter {
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
	public function ___init__(formatter:Dynamic, ?classes:Dynamic, ?border:Dynamic, ?table_id:Dynamic, ?render_links:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(formatter:Dynamic, ?classes:Dynamic, ?border:Dynamic, ?table_id:Dynamic, ?render_links:Dynamic):Void;
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
	public function _get_columns_formatted_values():Dynamic;
	public function _get_formatted_values():Dynamic;
	public function _write_body(indent:Dynamic):Dynamic;
	public function _write_cell(s:Dynamic, ?kind:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	public function _write_col_header(indent:Dynamic):Dynamic;
	public function _write_header(indent:Dynamic):Dynamic;
	public function _write_hierarchical_rows(fmt_values:Dynamic, indent:Dynamic):Dynamic;
	public function _write_regular_rows(fmt_values:Dynamic, indent:Dynamic):Dynamic;
	public function _write_row_header(indent:Dynamic):Dynamic;
	public function _write_table(?indent:Dynamic):Dynamic;
	static public var indent_delta : Dynamic;
	public var is_truncated : Dynamic;
	public var ncols : Dynamic;
	public function render():Dynamic;
	public var row_levels : Dynamic;
	public var should_show_dimensions : Dynamic;
	public var show_col_idx_names : Dynamic;
	public var show_row_idx_names : Dynamic;
	public function to_string():Dynamic;
	public function write(s:Dynamic, ?indent:Dynamic):Dynamic;
	public function write_td(s:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	/**
		Method for writing a formatted <th> cell.
		
		If col_space is set on the formatter then that is used for
		the value of min-width.
		
		Parameters
		----------
		s : object
		    The data to be written inside the cell.
		header : bool, default False
		    Set to True if the <th> is for use inside <thead>.  This will
		    cause min-width to be set if there is one.
		indent : int, default 0
		    The indentation level of the cell.
		tags : str, default None
		    Tags to include in the cell.
		
		Returns
		-------
		A written <th> cell.
	**/
	public function write_th(s:Dynamic, ?header:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	public function write_tr(line:Dynamic, ?indent:Dynamic, ?indent_delta:Dynamic, ?header:Dynamic, ?align:Dynamic, ?tags:Dynamic, ?nindex_levels:Dynamic):Dynamic;
}