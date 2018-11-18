/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.cfg;
@:pythonImport("tensorflow.python.autograph.pyct.cfg", "GraphBuilder") extern class GraphBuilder {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(parent_ast_node:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parent_ast_node:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Grows the graph by adding a jump node.
		
		Jump nodes are added to the current leaf set, and the leaf set becomes
		empty. If the jump node is the last in a cond section, then it may be added
		back to the leaf set by a separate mechanism.
		
		Args:
		  ast_node: ast.AST
		  guards: Tuple[ast.AST, ...], the finally sections active for this node
		Returns:
		  Node
	**/
	public function _add_jump_node(ast_node:Dynamic, guards:Dynamic):Dynamic;
	/**
		Grows the graph by adding a CFG node following the current leaves.
	**/
	public function _add_new_node(ast_node:Dynamic):Dynamic;
	/**
		Connects a jump node to the finally sections protecting it.
	**/
	public function _connect_jump_to_finally_sections(node:Dynamic):Dynamic;
	/**
		Connects nodes to signify that control flows from first to second.
		
		Args:
		  first: Union[Set[Node, ...], Node]
		  second: Node
	**/
	public function _connect_nodes(first:Dynamic, second:Dynamic):Dynamic;
	/**
		Grows the graph by adding a reentry node.
		
		This node causes control flow to go back to the loop section's entry.
		
		Args:
		  ast_node: ast.AST
		  section_id: Hashable, the node for which ast_node should be considered
		      to be an exit node
		  guards: Tuple[ast.AST, ...], the finally sections that guard ast_node
	**/
	public function add_continue_node(ast_node:Dynamic, section_id:Dynamic, guards:Dynamic):Dynamic;
	/**
		Grows the graph by adding an error node.
		
		This node becomes an exit for the entire graph.
		
		Args:
		  ast_node: ast.AST
		  guards: Tuple[ast.AST, ...], the finally sections that guard ast_node
	**/
	public function add_error_node(ast_node:Dynamic, guards:Dynamic):Dynamic;
	/**
		Grows the graph by adding an exit node.
		
		This node becomes an exit for the current section.
		
		Args:
		  ast_node: ast.AST
		  section_id: Hashable, the node for which ast_node should be considered
		      to be an exit node
		  guards: Tuple[ast.AST, ...], the finally sections that guard ast_node
	**/
	public function add_exit_node(ast_node:Dynamic, section_id:Dynamic, guards:Dynamic):Dynamic;
	/**
		Grows the graph by adding an ordinary CFG node.
		
		Ordinary nodes are followed by the next node, in lexical order, that is,
		they become the new leaf set.
		
		Args:
		  ast_node: ast.AST
		Returns:
		  Node
	**/
	public function add_ordinary_node(ast_node:Dynamic):Dynamic;
	/**
		Marks the beginning of a statement.
		
		Args:
		  stmt: Hashable, a key by which the statement can be identified in
		      the CFG's stmt_prev and stmt_next attributes
	**/
	public function begin_statement(stmt:Dynamic):Dynamic;
	/**
		Returns the CFG accumulated so far and resets the builder.
		
		Returns:
		  Graph
	**/
	public function build():Dynamic;
	/**
		Marks the end of a statement.
		
		Args:
		  stmt: Hashable, a key by which the statement can be identified in
		      the CFG's stmt_prev and stmt_next attributes; must match a key
		      previously passed to begin_statement.
	**/
	public function end_statement(stmt:Dynamic):Dynamic;
	/**
		Enters a conditional section.
		
		Conditional sections define an entry node, and one or more branches.
		
		Args:
		  section_id: Hashable, the same node that will be used in calls to the
		      section_id arg passed to new_cond_branch
	**/
	public function enter_cond_section(section_id:Dynamic):Dynamic;
	/**
		Enters a finally section.
	**/
	public function enter_finally_section(section_id:Dynamic):Dynamic;
	/**
		Enters a loop section.
		
		Loop sections define an entry node. The end of the section always flows back
		to the entry node. These admit continue jump nodes which also flow to the
		entry node.
		
		Args:
		  section_id: Hashable, the same node that will be used in calls to the
		      ast_node arg passed to add_continue_node
		  entry_node: ast.AST, the entry node into the loop (e.g. the test node
		      for while loops)
	**/
	public function enter_loop_section(section_id:Dynamic, entry_node:Dynamic):Dynamic;
	/**
		Enters a regular section.
		
		Regular sections admit exit jumps, which end the section.
		
		Args:
		  section_id: Hashable, the same node that will be used in calls to the
		      ast_node arg passed to add_exit_node
	**/
	public function enter_section(section_id:Dynamic):Dynamic;
	/**
		Exits a conditional section.
	**/
	public function exit_cond_section(section_id:Dynamic):Dynamic;
	/**
		Exits a finally section.
	**/
	public function exit_finally_section(section_id:Dynamic):Dynamic;
	/**
		Exits a loop section.
	**/
	public function exit_loop_section(section_id:Dynamic):Dynamic;
	/**
		Exits a regular section.
	**/
	public function exit_section(section_id:Dynamic):Dynamic;
	/**
		Begins a new branch in a cond section.
	**/
	public function new_cond_branch(section_id:Dynamic):Dynamic;
	/**
		Resets the state of this factory.
	**/
	public function reset():Dynamic;
}