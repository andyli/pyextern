/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.checkpoints;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.checkpoints") extern class Checkpoints_Module {
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
		See `tf.contrib.framework.init_from_checkpoint`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-22.
		Instructions for updating:
		Please use tf.contrib.framework.init_from_checkpoint instead
	**/
	static public function init_from_checkpoint(checkpoint_dir:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		See `tf.contrib.framework.list_variables`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-22.
		Instructions for updating:
		Please use tf.contrib.framework.list_variables instead
	**/
	static public function list_variables(checkpoint_dir:Dynamic):Dynamic;
	/**
		See `tf.contrib.framework.load_checkpoint`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-22.
		Instructions for updating:
		Please use tf.contrib.framework.load_checkpoint instead
	**/
	static public function load_checkpoint(filepattern:Dynamic):Dynamic;
	/**
		See `tf.contrib.framework.load_variable`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-22.
		Instructions for updating:
		Please use tf.contrib.framework.load_variable instead
	**/
	static public function load_variable(checkpoint_dir:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}