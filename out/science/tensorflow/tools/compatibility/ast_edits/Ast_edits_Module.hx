/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.ast_edits;
@:pythonImport("tensorflow.tools.compatibility.ast_edits") extern class Ast_edits_Module {
	static public var ERROR : Dynamic;
	static public var FIND_OPEN : Dynamic;
	static public var FIND_STRING_CHARS : Dynamic;
	static public var INFO : Dynamic;
	static public var WARNING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Check if this module import should not be renamed.
		
		Args:
		  module: (string) module name.
		  import_rename_spec: ImportRename instance.
		
		Returns:
		  True if this import should not be renamed according to the
		  import_rename_spec.
	**/
	static public function excluded_from_module_rename(module:Dynamic, import_rename_spec:Dynamic):Dynamic;
	/**
		Make an Attribute or Name node for name.
		
		Translate a qualified name into nested Attribute nodes (and a Name node).
		
		Args:
		  name: The name to translate to a node.
		  ctx: What context this name is used in. Defaults to Load()
		
		Returns:
		  A Name or Attribute node.
	**/
	static public function full_name_node(name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Get the value of an argument from a ast.Call node.
		
		This function goes through the positional and keyword arguments to check
		whether a given argument was used, and if so, returns its value (the node
		representing its value).
		
		This cannot introspect *args or **args, but it safely handles *args in
		Python3.5+.
		
		Args:
		  node: The ast.Call node to extract arg values from.
		  arg_name: The name of the argument to extract.
		  arg_pos: The position of the argument (in case it's passed as a positional
		    argument).
		
		Returns:
		  A tuple (arg_present, arg_value) containing a boolean indicating whether
		  the argument is present, and its value in case it is.
	**/
	static public function get_arg_value(node:Dynamic, arg_name:Dynamic, ?arg_pos:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Check if an ast.Call node uses arbitrary-length positional *args.
		
		This function works with the AST call node format of Python3.5+
		as well as the different AST format of earlier versions of Python.
		
		Args:
		  node: The ast.Call node to check arg values for.
		
		Returns:
		  True if the node uses starred variadic positional args or keyword args.
		  False if it does not.
	**/
	static public function uses_star_args_in_call(node:Dynamic):Dynamic;
	/**
		Check if an ast.Call node uses arbitrary-length *args or **kwargs.
		
		This function works with the AST call node format of Python3.5+
		as well as the different AST format of earlier versions of Python.
		
		Args:
		  node: The ast.Call node to check arg values for.
		
		Returns:
		  True if the node uses starred variadic positional args or keyword args.
		  False if it does not.
	**/
	static public function uses_star_args_or_kwargs_in_call(node:Dynamic):Dynamic;
	/**
		Check if an ast.Call node uses arbitrary-length **kwargs.
		
		This function works with the AST call node format of Python3.5+
		as well as the different AST format of earlier versions of Python.
		
		Args:
		  node: The ast.Call node to check arg values for.
		
		Returns:
		  True if the node uses starred variadic positional args or keyword args.
		  False if it does not.
	**/
	static public function uses_star_kwargs_in_call(node:Dynamic):Dynamic;
}