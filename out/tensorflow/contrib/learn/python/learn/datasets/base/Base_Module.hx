/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.base;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.base") extern class Base_Module {
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Load Boston housing dataset.
		
		Args:
		    data_path: string, path to boston dataset (optional)
		
		Returns:
		  Dataset object containing data in-memory.
	**/
	static public function load_boston(?data_path:Dynamic):Dynamic;
	/**
		Load dataset from CSV file. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-15.
		Instructions for updating:
		Please use load_csv_{with|without}_header instead.
	**/
	static public function load_csv(filename:Dynamic, target_dtype:Dynamic, ?target_column:Dynamic, ?has_header:Dynamic):Dynamic;
	/**
		Load dataset from CSV file with a header row.
	**/
	static public function load_csv_with_header(filename:Dynamic, target_dtype:Dynamic, features_dtype:Dynamic, ?target_column:Dynamic):Dynamic;
	/**
		Load dataset from CSV file without a header row.
	**/
	static public function load_csv_without_header(filename:Dynamic, target_dtype:Dynamic, features_dtype:Dynamic, ?target_column:Dynamic):Dynamic;
	/**
		Load Iris dataset.
		
		Args:
		    data_path: string, path to iris dataset (optional)
		
		Returns:
		  Dataset object containing data in-memory.
	**/
	static public function load_iris(?data_path:Dynamic):Dynamic;
	/**
		Download the data from source url, unless it's already here.
		
		Args:
		    filename: string, name of the file in the directory.
		    work_directory: string, path to working directory.
		    source_url: url to download from if file doesn't exist.
		
		Returns:
		    Path to resulting file.
	**/
	static public function maybe_download(filename:Dynamic, work_directory:Dynamic, source_url:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Create a smaller dataset of only 1/ratio of original data.
	**/
	static public function shrink_csv(filename:Dynamic, ratio:Dynamic):Dynamic;
}