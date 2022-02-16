/* This file is generated, do not edit! */
package tensorflow.python.util.decorator_utils;
@:pythonImport("tensorflow.python.util.decorator_utils") extern class Decorator_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Normalizes the docstring.
		
		Replaces tabs with spaces, removes leading and trailing blanks lines, and
		removes any indentation.
		
		Copied from PEP-257:
		https://www.python.org/dev/peps/pep-0257/#handling-docstring-indentation
		
		Args:
		  docstring: the docstring to normalize
		
		Returns:
		  The normalized docstring
	**/
	static public function _normalize_docstring(docstring:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a deprecation notice to a docstring.
		
		Args:
		  doc: The original docstring.
		  instructions: A string, describing how to fix the problem.
		  no_doc_str: The default value to use for `doc` if `doc` is empty.
		  suffix_str: Is added to the end of the first line.
		  notice: A list of strings. The main notice warning body.
		
		Returns:
		  A new docstring, with the notice attached.
		
		Raises:
		  ValueError: If `notice` is empty.
	**/
	static public function add_notice_to_docstring(doc:Dynamic, instructions:Dynamic, no_doc_str:Dynamic, suffix_str:Dynamic, notice:Dynamic):Dynamic;
	/**
		Cached class property decorator.
		
		Transforms a class method into a property whose value is computed once
		and then cached as a normal attribute for the life of the class.  Example
		usage:
		
		>>> class MyClass(object):
		...   @cached_classproperty
		...   def value(cls):
		...     print("Computing value")
		...     return '<property of %s>' % cls.__name__
		>>> class MySubclass(MyClass):
		...   pass
		>>> MyClass.value
		Computing value
		'<property of MyClass>'
		>>> MyClass.value  # uses cached value
		'<property of MyClass>'
		>>> MySubclass.value
		Computing value
		'<property of MySubclass>'
		
		This decorator is similar to `functools.cached_property`, but it adds a
		property to the class, not to individual instances.
	**/
	static public function cached_classproperty(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_qualified_name(_function:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function validate_callable(func:Dynamic, decorator_name:Dynamic):Dynamic;
}