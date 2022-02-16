/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.parser;
@:pythonImport("tensorflow.python.autograph.pyct.parser") extern class Parser_Module {
	static public var MAX_SIZE : Dynamic;
	static public var PY2_PREAMBLE : Dynamic;
	static public var PY3_PREAMBLE : Dynamic;
	static public var STANDARD_PREAMBLE : Dynamic;
	static public var STANDARD_PREAMBLE_LEN : Dynamic;
	static public var _LEADING_WHITESPACE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _arg_name(node:Dynamic):Dynamic;
	/**
		Returns True is node fits the argspec of func.
	**/
	static public function _node_matches_argspec(node:Dynamic, func:Dynamic):Dynamic;
	/**
		Returns the AST and source code of given lambda function.
		
		Args:
		  lam: types.LambdaType, Python function/method/class
		
		Returns:
		  gast.AST, Text: the parsed AST node; the source code that was parsed to
		  generate the AST (including any prefixes that this function may have added).
	**/
	static public function _parse_lambda(lam:Dynamic):Dynamic;
	/**
		Removes any backslash line continuations from the code.
	**/
	static public function _unfold_continuations(code_string:Dynamic):Dynamic;
	/**
		Returns a clean node and source code without indenting and context.
	**/
	static public function _without_context(node:Dynamic, lines:Dynamic, minl:Dynamic, maxl:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Dedents a code so that its first line starts at row zero.
	**/
	static public function dedent_block(code_string:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the AST of given piece of code.
		
		Args:
		  src: Text
		  preamble_len: Int, indicates leading nodes in the parsed AST which should be
		    dropped.
		  single_node: Bool, whether `src` is assumed to be represented by exactly one
		    AST node.
		
		Returns:
		  ast.AST
	**/
	static public function parse(src:Dynamic, ?preamble_len:Dynamic, ?single_node:Dynamic):Dynamic;
	/**
		Returns the AST and source code of given entity.
		
		Args:
		  entity: Any, Python function/method/class
		  future_features: Iterable[Text], future features to use (e.g.
		    'print_statement'). See
		    https://docs.python.org/2/reference/simple_stmts.html#future
		
		Returns:
		  gast.AST, Text: the parsed AST node; the source code that was parsed to
		  generate the AST (including any prefixes that this function may have added).
	**/
	static public function parse_entity(entity:Dynamic, future_features:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Returns the source code of given AST.
		
		Args:
		  node: The code to compile, as an AST object.
		  indentation: Unused, deprecated. The returning code will always be indented
		    at 4 spaces.
		  include_encoding_marker: Bool, whether to include a comment on the first
		    line to explicitly specify UTF-8 encoding.
		
		Returns:
		  code: The source code generated from the AST object
		  source_mapping: A mapping between the user and AutoGraph generated code.
	**/
	static public function unparse(node:Dynamic, ?indentation:Dynamic, ?include_encoding_marker:Dynamic):Dynamic;
}