/* This file is generated, do not edit! */
package tensorflow.python.util.all_util;
@:pythonImport("tensorflow.python.util.all_util") extern class All_util_Module {
	static public var _HIDDEN_ATTRIBUTES : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _reference_pattern : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Generates `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Removes symbols in a module that are not referenced by a docstring.
		
		Args:
		  module_name: the name of the module (usually `__name__`).
		  allowed_exception_list: a list of names that should not be removed.
		  doc_string_modules: a list of modules from which to take the docstrings.
		  If None, then a list containing only the module named `module_name` is used.
		
		  Furthermore, if a symbol previously added with `add_to_global_whitelist`,
		  then it will always be allowed. This is useful for internal tests.
		
		Returns:
		  None
	**/
	static public function remove_undocumented(module_name:Dynamic, ?allowed_exception_list:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Reveals a symbol that was previously removed by `remove_undocumented`.
		
		This should be used by tensorflow internal tests only. It explicitly
		defeats the encapsulation afforded by `remove_undocumented`.
		
		It throws an exception when the symbol was not hidden in the first place.
		
		Args:
		  symbol_name: a string representing the full absolute path of the symbol.
		  target_module: if specified, the module in which to restore the symbol.
	**/
	static public function reveal_undocumented(symbol_name:Dynamic, ?target_module:Dynamic):Dynamic;
}