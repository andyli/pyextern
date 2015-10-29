/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_sas") extern class Test_sas {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function numeric_as_float(data:Dynamic):Dynamic;
	/**
		Read a SAS file into a DataFrame.
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to SAS file or object implementing binary read method.
		format : string
		    File format, only `xport` is currently supported.
		index : identifier of index column
		    Identifier of column that should be used as index of the DataFrame.
		encoding : string
		    Encoding for text data.
		chunksize : int
		    Read file `chunksize` lines at a time, returns iterator.
		iterator : boolean, default False
		    Return XportReader object for reading file incrementally.
		
		Returns
		-------
		DataFrame or XportReader
		
		Examples
		--------
		Read a SAS Xport file:
		
		>>> df = pandas.read_sas('filename.XPT')
		
		Read a Xport file in 10,000 line chunks:
		
		>>> itr = pandas.read_sas('filename.XPT', chunksize=10000)
		>>> for chunk in itr:
		>>>     do_something(chunk)
		
		.. versionadded:: 0.17.0
	**/
	static public function read_sas(filepath_or_buffer:Dynamic, ?format:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
}