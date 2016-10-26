/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.framework.deprecation;
@:pythonImport("tensorflow.contrib.framework.python.framework.deprecation") extern class Deprecation_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a deprecation notice to a docstring for deprecated arguments.
	**/
	static public function _add_deprecated_arg_notice_to_docstring(doc:Dynamic, date:Dynamic, instructions:Dynamic):Dynamic;
	/**
		Adds a deprecation notice to a docstring for deprecated functions.
	**/
	static public function _add_deprecated_function_notice_to_docstring(doc:Dynamic, date:Dynamic, instructions:Dynamic):Dynamic;
	/**
		Adds a deprecation notice to a docstring.
	**/
	static public function _add_deprecation_to_docstring(doc:Dynamic, instructions:Dynamic, no_doc_str:Dynamic, suffix_str:Dynamic, notice:Dynamic):Dynamic;
	static public function _get_qualified_name(_function:Dynamic):Dynamic;
	static public function _validate_callable(func:Dynamic, decorator_name:Dynamic):Dynamic;
	static public function _validate_deprecation_args(date:Dynamic, instructions:Dynamic):Dynamic;
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
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}