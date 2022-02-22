/* This file is generated, do not edit! */
package pyarrow.ipc;
@:pythonImport("pyarrow.ipc", "RecordBatchStreamReader") extern class RecordBatchStreamReader {
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
		RecordBatchReader.__enter__(self)
	**/
	public function __enter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		RecordBatchReader.__exit__(self, exc_type, exc_val, exc_tb)
	**/
	public function __exit__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Implement iter(self).
	**/
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
	/**
		_RecordBatchStreamReader.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		_RecordBatchStreamReader.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		RecordBatchReader._export_to_c(self, out_ptr)
		
		Export to a C ArrowArrayStream struct, given its pointer.
		
		Parameters
		----------
		out_ptr: int
		    The raw pointer to a C ArrowArrayStream struct.
		
		Be careful: if you don't pass the ArrowArrayStream struct to a
		consumer, array memory will leak.  This is a low-level function
		intended for expert users.
	**/
	public function _export_to_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatchReader._import_from_c(in_ptr)
		
		Import RecordBatchReader from a C ArrowArrayStream struct,
		given its pointer.
		
		Parameters
		----------
		in_ptr: int
		    The raw pointer to a C ArrowArrayStream struct.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_RecordBatchStreamReader._open(self, source)
	**/
	public function _open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatchReader.from_batches(schema, batches)
		
		Create RecordBatchReader from an iterable of batches.
		
		Parameters
		----------
		schema : Schema
		    The shared schema of the record batches
		batches : Iterable[RecordBatch]
		    The batches that this reader will return.
		
		Returns
		-------
		reader : RecordBatchReader
	**/
	static public function from_batches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatchReader.get_next_batch(self)
	**/
	public function get_next_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatchReader.read_all(self)
		
		Read all record batches as a pyarrow.Table.
	**/
	public function read_all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatchReader.read_next_batch(self)
		
		Read next RecordBatch from the stream.
		
		Raises
		------
		StopIteration:
		    At end of stream.
	**/
	public function read_next_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_ReadPandasMixin.read_pandas(self, **options)
		
		Read contents of stream to a pandas.DataFrame.
		
		Read all record batches as a pyarrow.Table then convert it to a
		pandas.DataFrame using Table.to_pandas.
		
		Parameters
		----------
		**options
		    Arguments to forward to Table.to_pandas.
		
		Returns
		-------
		df : pandas.DataFrame
	**/
	public function read_pandas(?options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Shared schema of the record batches in the stream.
	**/
	public var schema : Dynamic;
	/**
		Current IPC read statistics.
	**/
	public var stats : Dynamic;
}