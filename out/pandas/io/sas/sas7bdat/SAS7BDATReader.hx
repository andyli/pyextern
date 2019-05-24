/* This file is generated, do not edit! */
package pandas.io.sas.sas7bdat;
@:pythonImport("pandas.io.sas.sas7bdat", "SAS7BDATReader") extern class SAS7BDATReader {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(path_or_buf:Dynamic, ?index:Dynamic, ?convert_dates:Dynamic, ?blank_missing:Dynamic, ?chunksize:Dynamic, ?encoding:Dynamic, ?convert_text:Dynamic, ?convert_header_text:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_buf:Dynamic, ?index:Dynamic, ?convert_dates:Dynamic, ?blank_missing:Dynamic, ?chunksize:Dynamic, ?encoding:Dynamic, ?convert_text:Dynamic, ?convert_header_text:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function __next__():Dynamic;
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
	public function _chunk_to_dataframe():Dynamic;
	public function _get_properties():Dynamic;
	public function _get_subheader_index(signature:Dynamic, compression:Dynamic, ptype:Dynamic):Dynamic;
	public function _parse_metadata():Dynamic;
	public function _process_columnattributes_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_columnlist_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_columnname_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_columnsize_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_columntext_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_format_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_page_meta():Dynamic;
	public function _process_page_metadata():Dynamic;
	public function _process_rowsize_subheader(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_subheader(subheader_index:Dynamic, pointer:Dynamic):Dynamic;
	public function _process_subheader_counts(offset:Dynamic, length:Dynamic):Dynamic;
	public function _process_subheader_pointers(offset:Dynamic, subheader_pointer_index:Dynamic):Dynamic;
	public function _read_bytes(offset:Dynamic, length:Dynamic):Dynamic;
	public function _read_float(offset:Dynamic, width:Dynamic):Dynamic;
	public function _read_int(offset:Dynamic, width:Dynamic):Dynamic;
	public function _read_next_page():Dynamic;
	public function _read_page_header():Dynamic;
	public function _read_subheader_signature(offset:Dynamic):Dynamic;
	public function close():Dynamic;
	/**
		Return a numpy int64 array of the column data lengths
	**/
	public function column_data_lengths():Dynamic;
	/**
		Return a numpy int64 array of the column offsets
	**/
	public function column_data_offsets():Dynamic;
	/**
		Returns a numpy character array of the column types:
		s (string) or d (double)
	**/
	public function column_types():Dynamic;
	public function read(?nrows:Dynamic):Dynamic;
}