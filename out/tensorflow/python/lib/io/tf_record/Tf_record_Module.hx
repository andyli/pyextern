/* This file is generated, do not edit! */
package tensorflow.python.lib.io.tf_record;
@:pythonImport("tensorflow.python.lib.io.tf_record") extern class Tf_record_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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