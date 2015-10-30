/* This file is generated, do not edit! */
package pandas.core.format;
@:pythonImport("pandas.core.format", "DataFrameFormatter") extern class DataFrameFormatter {
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
	@:native("__init__")
	public function ___init__(frame:Dynamic, ?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?justify:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?line_width:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, kwds:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		Checks whether the frame should be truncated. If so, slices
		the frame up.
	**/
	public function _chk_truncate():Dynamic;
	public function _format_col(i:Dynamic):Dynamic;
	public function _get_column_name_list():Dynamic;
	public function _get_formatted_column_labels(frame:Dynamic):Dynamic;
	public function _get_formatted_index(frame:Dynamic):Dynamic;
	public function _get_formatter(i:Dynamic):Dynamic;
	public function _join_multiline(strcols:Dynamic):Dynamic;
	/**
		Render a DataFrame to a list of columns (as lists of strings).
	**/
	public function _to_str_columns():Dynamic;
	public var has_column_names : Dynamic;
	public var has_index_names : Dynamic;
	static public var is_truncated : Dynamic;
	public var should_show_dimensions : Dynamic;
	static public var show_dimensions : Dynamic;
	/**
		Render a DataFrame to a html table.
		
		Parameters
		----------
		notebook : {True, False}, optional, default False
		    Whether the generated HTML is for IPython Notebook.
	**/
	public function to_html(?classes:Dynamic, ?notebook:Dynamic):Dynamic;
	/**
		Render a DataFrame to a LaTeX tabular/longtable environment output.
	**/
	public function to_latex(?column_format:Dynamic, ?longtable:Dynamic):Dynamic;
	/**
		Render a DataFrame to a console-friendly tabular output.
	**/
	public function to_string():Dynamic;
}