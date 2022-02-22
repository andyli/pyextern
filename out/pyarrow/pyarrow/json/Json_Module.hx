/* This file is generated, do not edit! */
package pyarrow.json;
@:pythonImport("pyarrow.json") extern class Json_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		read_json(input_file, read_options=None, parse_options=None, MemoryPool memory_pool=None)
		
		Read a Table from a stream of JSON data.
		
		Parameters
		----------
		input_file : str, path or file-like object
		    The location of JSON data. Currently only the line-delimited JSON
		    format is supported.
		read_options : pyarrow.json.ReadOptions, optional
		    Options for the JSON reader (see ReadOptions constructor for defaults).
		parse_options : pyarrow.json.ParseOptions, optional
		    Options for the JSON parser
		    (see ParseOptions constructor for defaults).
		memory_pool : MemoryPool, optional
		    Pool to allocate Table memory from.
		
		Returns
		-------
		:class:`pyarrow.Table`
		    Contents of the JSON file as a in-memory table.
	**/
	static public function read_json(args:haxe.extern.Rest<Dynamic>):Dynamic;
}