/* This file is generated, do not edit! */
package tensorflow.contrib.tensorboard.plugins.trace.trace;
@:pythonImport("tensorflow.contrib.tensorboard.plugins.trace.trace") extern class Trace_Module {
	static public var LEFT_TOKENS : Dynamic;
	static public var RIGHT_TOKENS : Dynamic;
	static public var TF_LIB_REGEX_FPATHS : Dynamic;
	static public var TOKENS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_data_from_tensors(tensors:Dynamic, info:Dynamic):Dynamic;
	static public function _count_brackets_braces_parenthesis(node:Dynamic, line2par:Dynamic):Dynamic;
	static public function _ignore_file_path(fname:Dynamic, ignore_regex_fpaths:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Parses the python source and finds multiline statements.
		
		Based on counting the number of open and closed parenthesis on each line.
		
		Args:
		  source: The source code string.
		
		Returns:
		  A dict that maps a line index A to a line index B, where A is the end of a
		  multiline statement and B is the start. Line indexing is 0-based.
	**/
	static public function find_multiline_statements(source:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Collects and stores trace information for a TensorFlow model.
		
		The output proto is stored in json format.
		
		Args:
		  output_file_path: The path where to store the output proto.
		  graph: Optional. The data flow graph. Defaults to `tf.get_default_graph()`.
		  ignore_regex_fpaths: Optional. Files whose path matches any of the regexes
		      in this list will be ignored. Defaults to patterns that match the core
		      tensorflow python library.
	**/
	static public function store_trace_info(output_file_path:Dynamic, ?graph:Dynamic, ?ignore_regex_fpaths:Dynamic):Dynamic;
}