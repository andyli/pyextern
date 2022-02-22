/* This file is generated, do not edit! */
package pyarrow.ipc;
@:pythonImport("pyarrow.ipc") extern class Ipc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_legacy_format_default(use_legacy_format:Dynamic, options:Dynamic):Dynamic;
	static public var _ipc_writer_class_doc : Dynamic;
	/**
		Deserialize a buffer protocol compatible object into a pandas DataFrame.
		
		Parameters
		----------
		buf : buffer
		    An object compatible with the buffer protocol.
		use_threads : bool, default True
		    Whether to parallelize the conversion using multiple threads.
		
		Returns
		-------
		df : pandas.DataFrame
	**/
	static public function deserialize_pandas(buf:Dynamic, ?use_threads:Dynamic):Dynamic;
	/**
		get_record_batch_size(RecordBatch batch)
		
		Return total size of serialized RecordBatch including metadata and padding.
		
		Parameters
		----------
		batch : RecordBatch
		    The recordbatch for which we want to know the size.
	**/
	static public function get_record_batch_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_tensor_size(Tensor tensor)
		
		Return total size of serialized Tensor including metadata and padding.
		
		Parameters
		----------
		tensor : Tensor
		    The tensor for which we want to known the size.
	**/
	static public function get_tensor_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create an Arrow columnar IPC file writer instance
		
		Parameters
		----------
		sink : str, pyarrow.NativeFile, or file-like Python object
		    Either a file path, or a writable file object.
		schema : pyarrow.Schema
		    The Arrow schema for data to be written to the file.
		options : pyarrow.ipc.IpcWriteOptions
		    Options for IPC serialization.
		
		    If None, default values will be used: the legacy format will not
		    be used unless overridden by setting the environment variable
		    ARROW_PRE_0_15_IPC_FORMAT=1, and the V5 metadata version will be
		    used unless overridden by setting the environment variable
		    ARROW_PRE_1_0_METADATA_VERSION=1.
		use_legacy_format : bool, default None
		    Deprecated in favor of setting options. Cannot be provided with
		    options.
		
		    If None, False will be used unless this default is overridden by
		    setting the environment variable ARROW_PRE_0_15_IPC_FORMAT=1
	**/
	static public function new_file(sink:Dynamic, schema:Dynamic, ?use_legacy_format:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Create an Arrow columnar IPC stream writer instance
		
		Parameters
		----------
		sink : str, pyarrow.NativeFile, or file-like Python object
		    Either a file path, or a writable file object.
		schema : pyarrow.Schema
		    The Arrow schema for data to be written to the file.
		options : pyarrow.ipc.IpcWriteOptions
		    Options for IPC serialization.
		
		    If None, default values will be used: the legacy format will not
		    be used unless overridden by setting the environment variable
		    ARROW_PRE_0_15_IPC_FORMAT=1, and the V5 metadata version will be
		    used unless overridden by setting the environment variable
		    ARROW_PRE_1_0_METADATA_VERSION=1.
		use_legacy_format : bool, default None
		    Deprecated in favor of setting options. Cannot be provided with
		    options.
		
		    If None, False will be used unless this default is overridden by
		    setting the environment variable ARROW_PRE_0_15_IPC_FORMAT=1
	**/
	static public function new_stream(sink:Dynamic, schema:Dynamic, ?use_legacy_format:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Create reader for Arrow file format.
		
		Parameters
		----------
		source : bytes/buffer-like, pyarrow.NativeFile, or file-like Python object
		    Either an in-memory buffer, or a readable file object.
		footer_offset : int, default None
		    If the file is embedded in some larger file, this is the byte offset to
		    the very end of the file data.
		
		Returns
		-------
		reader : RecordBatchFileReader
	**/
	static public function open_file(source:Dynamic, ?footer_offset:Dynamic):Dynamic;
	/**
		Create reader for Arrow streaming format.
		
		Parameters
		----------
		source : bytes/buffer-like, pyarrow.NativeFile, or file-like Python object
		    Either an in-memory buffer, or a readable file object.
		
		Returns
		-------
		reader : RecordBatchStreamReader
	**/
	static public function open_stream(source:Dynamic):Dynamic;
	/**
		read_message(source)
		
		Read length-prefixed message from file or buffer-like object
		
		Parameters
		----------
		source : pyarrow.NativeFile, file-like object, or buffer-like object
		
		Returns
		-------
		message : Message
	**/
	static public function read_message(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_record_batch(obj, Schema schema, DictionaryMemo dictionary_memo=None)
		
		Read RecordBatch from message, given a known schema. If reading data from a
		complete IPC stream, use ipc.open_stream instead
		
		Parameters
		----------
		obj : Message or Buffer-like
		schema : Schema
		dictionary_memo : DictionaryMemo, optional
		    If message contains dictionaries, must pass a populated
		    DictionaryMemo
		
		Returns
		-------
		batch : RecordBatch
	**/
	static public function read_record_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_schema(obj, DictionaryMemo dictionary_memo=None)
		
		Read Schema from message or buffer
		
		Parameters
		----------
		obj : buffer or Message
		dictionary_memo : DictionaryMemo, optional
		    Needed to be able to reconstruct dictionary-encoded fields
		    with read_record_batch
		
		Returns
		-------
		schema : Schema
	**/
	static public function read_schema(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_tensor(source)
		Read pyarrow.Tensor from pyarrow.NativeFile object from current
		    position. If the file source supports zero copy (e.g. a memory map), then
		    this operation does not allocate any memory. This function not assume that
		    the stream is aligned
		
		    Parameters
		    ----------
		    source : pyarrow.NativeFile
		
		    Returns
		    -------
		    tensor : Tensor
		
		    
	**/
	static public function read_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Serialize a pandas DataFrame into a buffer protocol compatible object.
		
		Parameters
		----------
		df : pandas.DataFrame
		nthreads : int, default None
		    Number of threads to use for conversion to Arrow, default all CPUs.
		preserve_index : bool, default None
		    The default of None will store the index as a column, except for
		    RangeIndex which is stored as metadata only. If True, always
		    preserve the pandas index data as a column. If False, no index
		    information is saved and the result will have a default RangeIndex.
		
		Returns
		-------
		buf : buffer
		    An object compatible with the buffer protocol.
	**/
	static public function serialize_pandas(df:Dynamic, ?nthreads:Dynamic, ?preserve_index:Dynamic):Dynamic;
	/**
		write_tensor(Tensor tensor, NativeFile dest)
		
		Write pyarrow.Tensor to pyarrow.NativeFile object its current position.
		
		Parameters
		----------
		tensor : pyarrow.Tensor
		dest : pyarrow.NativeFile
		
		Returns
		-------
		bytes_written : int
		    Total number of bytes written to the file
	**/
	static public function write_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
}