/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.base;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.base") extern class Base_Module {
	static public var _RETRIABLE_ERRNOS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_retriable(e:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
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
		Simple decorator for wrapping retriable functions.
		
		Args:
		  initial_delay: the initial delay.
		  factor: each subsequent retry, the delay is multiplied by this value.
		      (must be >= 1).
		  jitter: to avoid lockstep, the returned delay is multiplied by a random
		      number between (1-jitter) and (1+jitter). To add a 20% jitter, set
		      jitter = 0.2. Must be < 1.
		  max_delay: the maximum delay allowed (actual max is
		      max_delay * (1 + jitter).
		  is_retriable: (optional) a function that takes an Exception as an argument
		      and returns true if retry should be applied.
	**/
	static public function retry(initial_delay:Dynamic, max_delay:Dynamic, ?factor:Dynamic, ?jitter:Dynamic, ?is_retriable:Dynamic):Dynamic;
	/**
		Create a smaller dataset of only 1/ratio of original data.
	**/
	static public function shrink_csv(filename:Dynamic, ratio:Dynamic):Dynamic;
	/**
		The actual wrapper function that applies the retry logic.
	**/
	static public function urlretrieve_with_retry(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}