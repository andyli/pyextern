/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.preprocessing;
@:pythonImport("tensorflow.contrib.learn.python.learn.preprocessing") extern class Preprocessing_Module {
	/**
		Maps documents into sequence of ids for bytes. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		THIS CLASS IS DEPRECATED. See
		[contrib/learn/README.md](https://www.tensorflow.org/code/tensorflow/contrib/learn/README.md)
		for general migration instructions.
	**/
	static public function ByteProcessor(max_document_length:Dynamic):Dynamic;
	static public var TOKENIZER_RE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets up processor iterable. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		Args:
		  x: numpy, pandas or iterable.
		
		Returns:
		  Iterable of data to process.
	**/
	static public function setup_processor_data_feeder(x:Dynamic):Dynamic;
	/**
		Tokenizer generator. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		Args:
		  iterator: Input iterator with strings.
		
		Yields:
		  array of tokens per each value in the input.
	**/
	static public function tokenizer(iterator:Dynamic):Dynamic;
}