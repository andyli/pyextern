/* This file is generated, do not edit! */
package pandas.io.formats.csvs;
@:pythonImport("pandas.io.formats.csvs", "CSVFormatter") extern class CSVFormatter {
	static public var __annotations__ : Dynamic;
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
	public function ___init__(formatter:Dynamic, ?path_or_buf:Dynamic, ?sep:Dynamic, ?cols:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?compression:Dynamic, ?quoting:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?quotechar:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(formatter:Dynamic, ?path_or_buf:Dynamic, ?sep:Dynamic, ?cols:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?compression:Dynamic, ?quoting:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?quotechar:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?storage_options:Dynamic):Void;
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
	public function _generate_multiindex_header_rows():Dynamic;
	public function _get_index_label_flat():Dynamic;
	public function _get_index_label_from_obj():Dynamic;
	public function _get_index_label_multiindex():Dynamic;
	public var _has_aliases : Dynamic;
	public function _initialize_chunksize(chunksize:Dynamic):Dynamic;
	public function _initialize_columns(cols:Dynamic):Dynamic;
	public function _initialize_index_label(index_label:Dynamic):Dynamic;
	public function _initialize_quotechar(quotechar:Dynamic):Dynamic;
	public var _need_to_save_header : Dynamic;
	/**
		Dictionary used for storing number formatting settings.
	**/
	public var _number_format : Dynamic;
	public function _save():Dynamic;
	public function _save_body():Dynamic;
	public function _save_chunk(start_i:Dynamic, end_i:Dynamic):Dynamic;
	public function _save_header():Dynamic;
	public var data_index : Dynamic;
	public var decimal : Dynamic;
	public var encoded_labels : Dynamic;
	public var float_format : Dynamic;
	public var has_mi_columns : Dynamic;
	public var header : Dynamic;
	public var index : Dynamic;
	public var na_rep : Dynamic;
	public var nlevels : Dynamic;
	/**
		Create the writer & save.
	**/
	public function save():Dynamic;
	public var write_cols : Dynamic;
}