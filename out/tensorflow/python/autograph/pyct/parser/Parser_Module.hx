/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.parser;
@:pythonImport("tensorflow.python.autograph.pyct.parser") extern class Parser_Module {
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
		Returns the AST of given entity.
	**/
	static public function parse_entity(entity:Dynamic):Dynamic;
	/**
		Returns the AST of given identifier.
		
		Args:
		  src: A piece of code that represents a single Python expression
		Returns:
		  A gast.AST object.
		Raises:
		  ValueError: if src does not consist of a single Expression.
	**/
	static public function parse_expression(src:Dynamic):Dynamic;
	/**
		Returns the AST of given piece of code.
	**/
	static public function parse_str(src:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}