/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "_RecordBatchFileWriter") extern class _RecordBatchFileWriter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		_CRecordBatchWriter.__enter__(self)
	**/
	public function __enter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		_CRecordBatchWriter.__exit__(self, exc_type, exc_val, exc_tb)
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		_RecordBatchFileWriter.__reduce_cython__(self)
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
		_RecordBatchFileWriter.__setstate_cython__(self, __pyx_state)
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
	public var _metadata_version : Dynamic;
	/**
		_RecordBatchFileWriter._open(self, sink, Schema schema, IpcWriteOptions options=IpcWriteOptions())
	**/
	public function _open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _use_legacy_format : Dynamic;
	/**
		_CRecordBatchWriter.close(self)
		
		Close stream and write end-of-stream 0 marker.
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Current IPC write statistics.
	**/
	public var stats : Dynamic;
	/**
		_CRecordBatchWriter.write(self, table_or_batch)
		
		Write RecordBatch or Table to stream.
		
		Parameters
		----------
		table_or_batch : {RecordBatch, Table}
	**/
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_CRecordBatchWriter.write_batch(self, RecordBatch batch)
		
		Write RecordBatch to stream.
		
		Parameters
		----------
		batch : RecordBatch
	**/
	public function write_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_CRecordBatchWriter.write_table(self, Table table, max_chunksize=None, **kwargs)
		
		Write Table to stream in (contiguous) RecordBatch objects.
		
		Parameters
		----------
		table : Table
		max_chunksize : int, default None
		    Maximum size for RecordBatch chunks. Individual chunks may be
		    smaller depending on the chunk layout of individual columns.
	**/
	public function write_table(args:haxe.extern.Rest<Dynamic>):Dynamic;
}