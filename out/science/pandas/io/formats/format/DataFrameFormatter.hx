/* This file is generated, do not edit! */
package pandas.io.formats.format;
@:pythonImport("pandas.io.formats.format", "DataFrameFormatter") extern class DataFrameFormatter {
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
	public function ___init__(frame:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?justify:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?max_rows:Dynamic, ?min_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, ?decimal:Dynamic, ?bold_rows:Dynamic, ?escape:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(frame:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?justify:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?max_rows:Dynamic, ?min_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, ?decimal:Dynamic, ?bold_rows:Dynamic, ?escape:Dynamic):Void;
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
	/**
		Adjust max_rows using display logic.
		
		See description here:
		https://pandas.pydata.org/docs/dev/user_guide/options.html#frequently-used-options
		
		GH #37359
	**/
	public function _adjust_max_rows(max_rows:Dynamic):Dynamic;
	/**
		Number of columns fitting the screen.
	**/
	public function _calc_max_cols_fitted():Dynamic;
	/**
		Number of rows with data fitting the screen.
	**/
	public function _calc_max_rows_fitted():Dynamic;
	public function _get_column_name_list():Dynamic;
	public function _get_formatted_column_labels(frame:Dynamic):Dynamic;
	public function _get_formatted_index(frame:Dynamic):Dynamic;
	public function _get_formatter(i:Dynamic):Dynamic;
	/**
		Get number of rows occupied by prompt, dots and dimension info.
	**/
	public function _get_number_of_auxillary_rows():Dynamic;
	public function _get_strcols_without_index():Dynamic;
	public function _initialize_colspace(col_space:Dynamic):Dynamic;
	public function _initialize_columns(columns:Dynamic):Dynamic;
	public function _initialize_formatters(formatters:Dynamic):Dynamic;
	public function _initialize_justify(justify:Dynamic):Dynamic;
	public function _initialize_sparsify(sparsify:Dynamic):Dynamic;
	/**
		Check if the output is to be shown in terminal.
	**/
	public function _is_in_terminal():Dynamic;
	public function _is_screen_narrow(max_width:Dynamic):Dynamic;
	public function _is_screen_short(max_height:Dynamic):Dynamic;
	/**
		Remove columns, which are not to be displayed and adjust formatters.
		
		Attributes affected:
		    - tr_frame
		    - formatters
		    - tr_col_num
	**/
	public function _truncate_horizontally():Dynamic;
	/**
		Remove rows, which are not to be displayed.
		
		Attributes affected:
		    - tr_frame
		    - tr_row_num
	**/
	public function _truncate_vertically():Dynamic;
	public var dimensions_info : Dynamic;
	public function format_col(i:Dynamic):Dynamic;
	/**
		Render a DataFrame to a list of columns (as lists of strings).
	**/
	public function get_strcols():Dynamic;
	public var has_column_names : Dynamic;
	public var has_index_names : Dynamic;
	public var is_truncated : Dynamic;
	public var is_truncated_horizontally : Dynamic;
	public var is_truncated_vertically : Dynamic;
	public var max_rows_displayed : Dynamic;
	public var should_show_dimensions : Dynamic;
	public var show_col_idx_names : Dynamic;
	public var show_row_idx_names : Dynamic;
	/**
		Check whether the frame should be truncated. If so, slice the frame up.
	**/
	public function truncate():Dynamic;
}