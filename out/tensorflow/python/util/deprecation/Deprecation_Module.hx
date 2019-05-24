/* This file is generated, do not edit! */
package tensorflow.python.util.deprecation;
@:pythonImport("tensorflow.python.util.deprecation") extern class Deprecation_Module {
	static public var _PRINTED_WARNING : Dynamic;
	static public var _PRINT_DEPRECATION_WARNINGS : Dynamic;
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
	static public function _add_deprecated_arg_notice_to_docstring(doc:Dynamic, date:Dynamic, instructions:Dynamic, deprecated_names:Dynamic):Dynamic;
	/**
		Adds a deprecation notice to a docstring for deprecated arguments.
	**/
	static public function _add_deprecated_arg_value_notice_to_docstring(doc:Dynamic, date:Dynamic, instructions:Dynamic, deprecated_name_value_dict:Dynamic):Dynamic;
	/**
		Adds a deprecation notice to a docstring for deprecated functions.
	**/
	static public function _add_deprecated_function_notice_to_docstring(doc:Dynamic, date:Dynamic, instructions:Dynamic):Dynamic;
	/**
		Returns call location given level up from current call.
	**/
	static public function _call_location(?outer:Dynamic):Dynamic;
	static public function _validate_deprecation_args(date:Dynamic, instructions:Dynamic):Dynamic;
	/**
		Indicate that one function wraps another.
		
		This decorator wraps a function using `tf_decorator.make_decorator`
		so that doc generation scripts can pick up original function
		signature.
		It would be better to use @functools.wrap decorator, but it would
		not update function signature to match wrapped function in Python 2.
		
		Args:
		  wrapped_function: The function that decorated function wraps.
		
		Returns:
		  Function that accepts wrapper function as an argument and returns
		  `TFDecorator` instance.
	**/
	static public function _wrap_decorator(wrapped_function:Dynamic):Dynamic;
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
	/**
		Deprecate a symbol in favor of a new name with identical semantics.
		
		This function is meant to be used when defining a backwards-compatibility
		alias for a symbol which has been moved. For example:
		
		module1.py:
		```python
		class NewNameForClass: pass
		```
		
		module2.py:
		```python
		import module1
		
		DeprecatedNameForClass = deprecated_alias(
		  deprecated_name='module2.DeprecatedNameForClass',
		  name='module1.NewNameForClass',
		  module1.NewNameForClass)
		```
		
		This function works for classes and functions.
		
		For classes, it creates a new class which is functionally identical (it
		inherits from the original, and overrides its constructor), but which prints
		a deprecation warning when an instance is created. It also adds a deprecation
		notice to the class' docstring.
		
		For functions, it returns a function wrapped by `tf_decorator.make_decorator`.
		That function prints a warning when used, and has a deprecation notice in its
		docstring. This is more or less equivalent (the deprecation warning has
		slightly different text) to writing:
		
		```python
		@deprecated
		def deprecated_alias(original_args):
		  real_function(original_args)
		```
		
		Args:
		  deprecated_name: The name of the symbol that is being deprecated, to be used
		    in the warning message. This should be its fully qualified name to avoid
		    confusion.
		  name: The name of the symbol that is to be used instead of the deprecated
		    name. This should be a fully qualified name to avoid confusion.
		  func_or_class: The (non-deprecated) class or function for which a deprecated
		    alias should be created.
		  warn_once: If True (the default), only print a deprecation warning the first
		    time this function is used, or the class is instantiated.
		
		Returns:
		  A wrapped version of `func_or_class` which prints a deprecation warning on
		  use and has a modified docstring.
	**/
	static public function deprecated_alias(deprecated_name:Dynamic, name:Dynamic, func_or_class:Dynamic, ?warn_once:Dynamic):Dynamic;
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
		  warn_once: If `True`, warn only the first time this function is called with
		    deprecated argument values. Otherwise, every call (with a deprecated
		    argument value) will log a warning.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function rewrite_argument_docstring(old_doc:Dynamic, old_argument:Dynamic, new_argument:Dynamic):Dynamic;
	/**
		Temporarily silence deprecation warnings.
	**/
	static public function silence():Dynamic;
}