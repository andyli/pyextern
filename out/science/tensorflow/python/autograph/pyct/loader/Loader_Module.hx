/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.loader;
@:pythonImport("tensorflow.python.autograph.pyct.loader") extern class Loader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Remove a file, if it exists.
	**/
	static public function _remove_file(file_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Loads the given AST as a Python module.
		
		Compiling the AST code this way ensures that the source code is readable by
		e.g. `pdb` or `inspect`.
		
		Args:
		  nodes: Union[ast.AST, Iterable[ast.AST]], the code to compile, as an AST
		    object.
		  indentation: Text, the string to use for indentation.
		  include_source_map: bool, whether return a source map.
		  delete_on_exit: bool, whether to delete the temporary file used for
		    compilation on exit.
		
		Returns:
		  Tuple[module, Text, Dict[LineLocation, OriginInfo]], containing:
		  the module containing the unparsed nodes, the source code corresponding to
		  nodes, and the source map. Is include_source_map is False, the source map
		  will be None.
	**/
	static public function load_ast(nodes:Dynamic, ?indentation:Dynamic, ?include_source_map:Dynamic, ?delete_on_exit:Dynamic):Dynamic;
	/**
		Loads the given source code as a Python module.
	**/
	static public function load_source(source:Dynamic, delete_on_exit:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}