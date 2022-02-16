/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.ast_util;
@:pythonImport("tensorflow.python.autograph.pyct.ast_util") extern class Ast_util_Module {
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
		Applies a function to each individual assignment.
		
		This function can process a possibly-unpacked (e.g. a, b = c, d) assignment.
		It tries to break down the unpacking if possible. In effect, it has the same
		effect as passing the assigned values in SSA form to apply_fn.
		
		Examples:
		
		The following will result in apply_fn(a, c), apply_fn(b, d):
		
		    a, b = c, d
		
		The following will result in apply_fn(a, c[0]), apply_fn(b, c[1]):
		
		    a, b = c
		
		The following will result in apply_fn(a, (b, c)):
		
		    a = b, c
		
		It uses the visitor pattern to allow subclasses to process single
		assignments individually.
		
		Args:
		  targets: Union[List[ast.AST, ...], Tuple[ast.AST, ...], ast.AST, should be
		      used with the targets field of an ast.Assign node
		  values: ast.AST
		  apply_fn: Callable[[ast.AST, ast.AST], None], called with the
		      respective nodes of each single assignment
	**/
	static public function apply_to_single_assignments(targets:Dynamic, values:Dynamic, apply_fn:Dynamic):Dynamic;
	/**
		Creates a deep copy of an AST.
		
		The copy will not include fields that are prefixed by '__', with the
		exception of user-specified annotations.
		
		Args:
		  node: ast.AST
		  preserve_annos: Optional[Set[Hashable]], annotation keys to include in the
		      copy
		Returns:
		  ast.AST
	**/
	static public function copy_clean(node:Dynamic, ?preserve_annos:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts a list of ast.keyword objects to a dict.
	**/
	static public function keywords_to_dict(keywords:Dynamic):Dynamic;
	/**
		Basic pattern matcher for AST.
		
		The pattern may contain wildcards represented by the symbol '_'. A node
		matches a pattern if for every node in the tree, either there is a node of
		the same type in pattern, or a Name node with id='_'.
		
		Args:
		  node: ast.AST
		  pattern: ast.AST
		Returns:
		  bool
	**/
	static public function matches(node:Dynamic, pattern:Dynamic):Dynamic;
	/**
		Walks two ASTs in parallel.
		
		The two trees must have identical structure.
		
		Args:
		  node: Union[ast.AST, Iterable[ast.AST]]
		  other: Union[ast.AST, Iterable[ast.AST]]
		Yields:
		  Tuple[ast.AST, ast.AST]
		Raises:
		  ValueError: if the two trees don't have identical structure.
	**/
	static public function parallel_walk(node:Dynamic, other:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Renames symbols in an AST. Requires qual_names annotations.
	**/
	static public function rename_symbols(node:Dynamic, name_map:Dynamic):Dynamic;
}