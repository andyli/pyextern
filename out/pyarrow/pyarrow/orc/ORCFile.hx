/* This file is generated, do not edit! */
package pyarrow.orc;
@:pythonImport("pyarrow.orc", "ORCFile") extern class ORCFile {
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
	public function ___init__(source:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(source:Dynamic):Void;
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
	public function _select_names(?columns:Dynamic):Dynamic;
	/**
		Compression codec of the file
	**/
	public var compression : Dynamic;
	/**
		Number of bytes to buffer for the compression codec in the file
	**/
	public var compression_size : Dynamic;
	/**
		Length of the data stripes in the file in bytes
	**/
	public var content_length : Dynamic;
	/**
		The number of compressed bytes in the file footer
	**/
	public var file_footer_length : Dynamic;
	/**
		The number of bytes in the file
	**/
	public var file_length : Dynamic;
	/**
		The number of bytes in the file postscript
	**/
	public var file_postscript_length : Dynamic;
	/**
		Format version of the ORC file, must be 0.11 or 0.12
	**/
	public var file_version : Dynamic;
	/**
		The file metadata, as an arrow KeyValueMetadata
	**/
	public var metadata : Dynamic;
	/**
		The number of rows in the file
	**/
	public var nrows : Dynamic;
	/**
		Number of stripe statistics
	**/
	public var nstripe_statistics : Dynamic;
	/**
		The number of stripes in the file
	**/
	public var nstripes : Dynamic;
	/**
		Read the whole file.
		
		Parameters
		----------
		columns : list
		    If not None, only these columns will be read from the file. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'
		
		Returns
		-------
		pyarrow.Table
		    Content of the file as a Table.
	**/
	public function read(?columns:Dynamic):Dynamic;
	/**
		Read a single stripe from the file.
		
		Parameters
		----------
		n : int
		    The stripe index
		columns : list
		    If not None, only these columns will be read from the stripe. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'
		
		Returns
		-------
		pyarrow.RecordBatch
		    Content of the stripe as a RecordBatch.
	**/
	public function read_stripe(n:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		Number of rows per an entry in the row index or 0
		if there is no row index
	**/
	public var row_index_stride : Dynamic;
	/**
		The file schema, as an arrow schema
	**/
	public var schema : Dynamic;
	/**
		Software instance and version that wrote this file
	**/
	public var software_version : Dynamic;
	/**
		The number of compressed bytes in the file stripe statistics
	**/
	public var stripe_statistics_length : Dynamic;
	/**
		Name of the writer that wrote this file.
		If the writer is unknown then its Writer ID
		(a number) is returned
	**/
	public var writer : Dynamic;
	/**
		Version of the writer
	**/
	public var writer_version : Dynamic;
}