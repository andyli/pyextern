/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.basic_session_run_hooks;
@:pythonImport("tensorflow.contrib.learn.python.learn.basic_session_run_hooks") extern class Basic_session_run_hooks_Module {
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}