/* This file is generated, do not edit! */
package tensorflow.python.autograph.converters.return_statements;
@:pythonImport("tensorflow.python.autograph.converters.return_statements") extern class Return_statements_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function contains_return(node:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Ensure a function has only a single return.
		
		This transforms an AST node with multiple returns successively into containing
		only a single return node.
		There are a few restrictions on what we can handle:
		 - An AST being transformed must contain at least one return.
		 - No returns allowed in loops. We have to know the type of the return value,
		 and we currently don't have either a type inference system to discover it,
		 nor do we have a mechanism for late type binding in TensorFlow.
		 - After all transformations are finished, a Return node is not allowed inside
		 control flow. If we were unable to move a return outside of control flow,
		 this is an error.
		
		Args:
		   node: ast.AST
		   ctx: converter.EntityContext
		
		Returns:
		   new_node: an AST with a single return value
		
		Raises:
		  ValueError: if the AST is structured so that we can't perform the
		 transform.
	**/
	static public function transform(node:Dynamic, ctx:Dynamic):Dynamic;
}