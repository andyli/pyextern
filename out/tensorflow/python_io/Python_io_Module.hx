/* This file is generated, do not edit! */
package tensorflow.python_io;
@:pythonImport("tensorflow.python_io") extern class Python_io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An iterator that read the records from a TFRecords file.
		
		Args:
		  path: The path to the TFRecords file.
		  options: (optional) A TFRecordOptions object.
		
		Yields:
		  Strings.
		
		Raises:
		  IOError: If `path` cannot be opened for reading.
	**/
	static public function tf_record_iterator(path:Dynamic, ?options:Dynamic):Dynamic;
}