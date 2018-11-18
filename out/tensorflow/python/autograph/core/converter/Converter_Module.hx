/* This file is generated, do not edit! */
package tensorflow.python.autograph.core.converter;
@:pythonImport("tensorflow.python.autograph.core.converter") extern class Converter_Module {
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
		Applies a converter to an AST.
		
		Args:
		  node: ast.AST
		  context: converter.EntityContext
		  converter_module: converter.Base
		
		Returns:
		  ast.AST, the result of applying converter to node
	**/
	static public function apply_(node:Dynamic, context:Dynamic, converter_module:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Performs a complete static analysis of the given code.
		
		Args:
		  node: ast.AST
		  context: converter.EntityContext
		  is_initial: bool, whether this is the initial analysis done on the input
		      source code
		
		Returns:
		  ast.AST, same as node, with the static analysis annotations added
	**/
	static public function standard_analysis(node:Dynamic, context:Dynamic, ?is_initial:Dynamic):Dynamic;
}