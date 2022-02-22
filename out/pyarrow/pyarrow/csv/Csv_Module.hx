/* This file is generated, do not edit! */
package pyarrow.csv;
@:pythonImport("pyarrow.csv") extern class Csv_Module {
	static public var ISO8601 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		open_csv(input_file, read_options=None, parse_options=None, convert_options=None, MemoryPool memory_pool=None)
		
		Open a streaming reader of CSV data.
		
		Reading using this function is always single-threaded.
		
		Parameters
		----------
		input_file : string, path or file-like object
		    The location of CSV data.  If a string or path, and if it ends
		    with a recognized compressed file extension (e.g. ".gz" or ".bz2"),
		    the data is automatically decompressed when reading.
		read_options : pyarrow.csv.ReadOptions, optional
		    Options for the CSV reader (see pyarrow.csv.ReadOptions constructor
		    for defaults)
		parse_options : pyarrow.csv.ParseOptions, optional
		    Options for the CSV parser
		    (see pyarrow.csv.ParseOptions constructor for defaults)
		convert_options : pyarrow.csv.ConvertOptions, optional
		    Options for converting CSV data
		    (see pyarrow.csv.ConvertOptions constructor for defaults)
		memory_pool : MemoryPool, optional
		    Pool to allocate Table memory from
		
		Returns
		-------
		:class:`pyarrow.csv.CSVStreamingReader`
	**/
	static public function open_csv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_csv(input_file, read_options=None, parse_options=None, convert_options=None, MemoryPool memory_pool=None)
		
		Read a Table from a stream of CSV data.
		
		Parameters
		----------
		input_file : string, path or file-like object
		    The location of CSV data.  If a string or path, and if it ends
		    with a recognized compressed file extension (e.g. ".gz" or ".bz2"),
		    the data is automatically decompressed when reading.
		read_options : pyarrow.csv.ReadOptions, optional
		    Options for the CSV reader (see pyarrow.csv.ReadOptions constructor
		    for defaults)
		parse_options : pyarrow.csv.ParseOptions, optional
		    Options for the CSV parser
		    (see pyarrow.csv.ParseOptions constructor for defaults)
		convert_options : pyarrow.csv.ConvertOptions, optional
		    Options for converting CSV data
		    (see pyarrow.csv.ConvertOptions constructor for defaults)
		memory_pool : MemoryPool, optional
		    Pool to allocate Table memory from
		
		Returns
		-------
		:class:`pyarrow.Table`
		    Contents of the CSV file as a in-memory table.
	**/
	static public function read_csv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		write_csv(data, output_file, write_options=None, MemoryPool memory_pool=None)
		
		Write record batch or table to a CSV file.
		
		Parameters
		----------
		data : pyarrow.RecordBatch or pyarrow.Table
		    The data to write.
		output_file : string, path, pyarrow.NativeFile, or file-like object
		    The location where to write the CSV data.
		write_options : pyarrow.csv.WriteOptions
		    Options to configure writing the CSV data.
		memory_pool : MemoryPool, optional
		    Pool for temporary allocations.
	**/
	static public function write_csv(args:haxe.extern.Rest<Dynamic>):Dynamic;
}