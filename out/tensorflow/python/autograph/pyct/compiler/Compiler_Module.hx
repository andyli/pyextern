/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.compiler;
@:pythonImport("tensorflow.python.autograph.pyct.compiler") extern class Compiler_Module {
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
		Return the Python objects represented by given AST.
		
		Compiling the AST code this way ensures that the source code is readable by
		e.g. `pdb` or `inspect`.
		
		Args:
		  nodes: Union[ast.AST, Iterable[ast.AST]], the code to compile, as an AST
		      object.
		  indentation: Text, the string to use for indentation.
		  include_source_map: bool, whether to attach a source map to the compiled
		      object. Also see origin_info.py.
		  source_prefix: Optional[Text], string to print as-is into the source file.
		  delete_on_exit: bool, whether to delete the temporary file used for
		      compilation on exit.
		
		Returns:
		  compiled_nodes: A module object containing the compiled source code.
		  source: The source code of the compiled object
		Raises:
		  ValueError: If ag_source_map__ is already in the namespace of the compiled
		  nodes.
	**/
	static public function ast_to_object(nodes:Dynamic, ?indentation:Dynamic, ?include_source_map:Dynamic, ?source_prefix:Dynamic, ?delete_on_exit:Dynamic):Dynamic;
	/**
		Return the source code of given AST.
		
		Args:
		  node: The code to compile, as an AST object.
		  indentation: The string to use for indentation.
		
		Returns:
		  code: The source code generated from the AST object
		  source_mapping: A mapping between the user and AutoGraph generated code.
	**/
	static public function ast_to_source(node:Dynamic, ?indentation:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}