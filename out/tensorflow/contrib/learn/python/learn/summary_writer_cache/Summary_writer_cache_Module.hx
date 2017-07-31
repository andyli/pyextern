/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.summary_writer_cache;
@:pythonImport("tensorflow.contrib.learn.python.learn.summary_writer_cache") extern class Summary_writer_cache_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clear cached summary writers. Currently only used for unit tests.
	**/
	static public function clear_summary_writers():Dynamic;
	static public var division : Dynamic;
	/**
		Returns the FileWriter for the specified directory.
		
		Args:
		  logdir: str, name of the directory.
		
		Returns:
		  A `FileWriter`.
	**/
	static public function get_summary_writer(logdir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}