/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.origin_info;
@:pythonImport("tensorflow.python.autograph.pyct.origin_info") extern class Origin_info_Module {
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
		Copies the origin info from a node to another, recursively.
	**/
	static public function copy_origin(from_node:Dynamic, to_node:Dynamic):Dynamic;
	/**
		Creates a source map between an annotated AST and the code it compiles to.
		
		Note: this function assumes nodes nodes, code and filepath correspond to the
		same code.
		
		Args:
		  nodes: Iterable[ast.AST, ...], one or more AST modes.
		  code: Text, the source code in which nodes are found.
		  filepath: Text
		
		Returns:
		  Dict[LineLocation, OriginInfo], mapping locations in code to locations
		  indicated by origin annotations in node.
	**/
	static public function create_source_map(nodes:Dynamic, code:Dynamic, filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds origin information to an AST, based on the source it was loaded from.
		
		This allows us to map the original source code line numbers to generated
		source code.
		
		Note: the AST may be a part of a larger context (e.g. a function is part of
		a module that may contain other things). However, this function does not
		assume the source argument contains the entire context, nor that it contains
		only code corresponding to node itself. However, it assumes that node was
		parsed from the given source code.
		For this reason, two extra arguments are required, and they indicate the
		location of the node in the original context.
		
		Args:
		  node: gast.AST, the AST to annotate.
		  source: Text, the source code representing node.
		  context_filepath: Text
		  context_lineno: int
		  context_col_offset: int
	**/
	static public function resolve(node:Dynamic, source:Dynamic, context_filepath:Dynamic, context_lineno:Dynamic, context_col_offset:Dynamic):Dynamic;
	/**
		Like resolve, but extracts the context information from an entity.
	**/
	static public function resolve_entity(node:Dynamic, source:Dynamic, entity:Dynamic):Dynamic;
}