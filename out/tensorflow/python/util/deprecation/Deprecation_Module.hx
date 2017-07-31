/* This file is generated, do not edit! */
package tensorflow.python.util.deprecation;
@:pythonImport("tensorflow.python.util.deprecation") extern class Deprecation_Module {
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
		Returns call location given level up from current call.
	**/
	static public function _call_location():Dynamic;
	static public function _validate_deprecation_args(date:Dynamic, instructions:Dynamic):Dynamic;
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
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String. or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, or the second element of a deprecated_tuple is not a
		    list.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>):Dynamic;
	/**
		Looks up deprecated argument name and ensures both are not used.
		
		Args:
		  new_name: new name of argument
		  new_value: value of new argument (or None if not used)
		  old_name: old name of argument
		  old_value: value of old argument (or None if not used)
		Returns:
		  The effective argument that should be used.
		Raises:
		  ValueError: if new_value and old_value are both non-null
	**/
	static public function deprecated_argument_lookup(new_name:Dynamic, new_value:Dynamic, old_name:Dynamic, old_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function rewrite_argument_docstring(old_doc:Dynamic, old_argument:Dynamic, new_argument:Dynamic):Dynamic;
}