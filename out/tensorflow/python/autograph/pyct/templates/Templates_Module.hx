/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.templates;
@:pythonImport("tensorflow.python.autograph.pyct.templates") extern class Templates_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts from a known data type to AST.
	**/
	static public function _convert_to_ast(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Replaces placeholders in a Python template.
		
		AST Name and Tuple nodes always receive the context that inferred from
		the template. However, when replacing more complex nodes (that can potentially
		contain Name children), then the caller is responsible for setting the
		appropriate context.
		
		Args:
		  template: A string representing Python code. Any symbol name can be used
		      that appears in the template code can be used as placeholder.
		  **replacements: A mapping from placeholder names to (lists of) AST nodes
		      that these placeholders will be replaced by. String values are also
		      supported as a shorthand for AST Name nodes with the respective ID.
		
		Returns:
		  An AST node or list of AST nodes with the replacements made. If the
		  template was a function, a list will be returned. If the template was a
		  node, the same node will be returned. If the template was a string, an
		  AST node will be returned (a `Module` node in the case of a multi-line
		  string, an `Expr` node otherwise).
		
		Raises:
		  ValueError: if the arguments are incorrect.
	**/
	static public function replace(template:Dynamic, ?replacements:python.KwArgs<Dynamic>):Dynamic;
	/**
		Variant of replace that generates expressions, instead of code blocks.
	**/
	static public function replace_as_expression(template:Dynamic, ?replacements:python.KwArgs<Dynamic>):Dynamic;
}