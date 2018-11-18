/* This file is generated, do not edit! */
package tensorflow.python.autograph.impl.conversion;
@:pythonImport("tensorflow.python.autograph.impl.conversion") extern class Conversion_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_reserved_symbol(namespace:Dynamic, name:Dynamic, entity:Dynamic):Dynamic;
	/**
		Adds namespace references to the module that exposes the api itself.
	**/
	static public function _add_self_references(namespace:Dynamic, autograph_module:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var ag_internal : Dynamic;
	/**
		Specialization of `entity_to_graph` for classes.
	**/
	static public function class_to_graph(c:Dynamic, program_ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compile a Python entity into equivalent TensorFlow.
		
		The function will also recursively compile all the entities that `o`
		references, updating `dependency_cache`.
		
		This function is reentrant, and relies on dependency_cache to avoid
		generating duplicate code.
		
		Args:
		  o: A Python entity.
		  program_ctx: A ProgramContext object.
		  arg_values: A dict containing value hints for symbols like function
		      parameters.
		  arg_types: A dict containing type hints for symbols like function
		      parameters.
		
		Returns:
		  A tuple (ast, new_name, namespace):
		      * ast: An AST representing an entity with interface equivalent to `o`,
		          but which when executed it creates TF a graph.
		      * new_name: The symbol name under which the new entity can be found.
		      * namespace: A dict mapping all symbols visible to the converted entity,
		          keyed by their symbol name.
		
		Raises:
		  ValueError: if the entity type is not supported.
	**/
	static public function entity_to_graph(o:Dynamic, program_ctx:Dynamic, arg_values:Dynamic, arg_types:Dynamic):Dynamic;
	/**
		Specialization of `entity_to_graph` for callable functions.
	**/
	static public function function_to_graph(f:Dynamic, program_ctx:Dynamic, arg_values:Dynamic, arg_types:Dynamic, ?owner_type:Dynamic, ?rewrite_errors:Dynamic):Dynamic;
	/**
		Check whether an entity is whitelisted for use in graph mode.
		
		Examples of whitelisted entities include all members of the tensorflow
		package.
		
		Args:
		  o: A Python entity.
		Returns:
		  Boolean
	**/
	static public function is_whitelisted_for_graph(o:Dynamic):Dynamic;
	/**
		Convert Python code to equivalent TF graph mode code.
		
		Args:
		  node: AST, the code to convert.
		  context: converter.EntityContext
		  rewrite_errors: Boolean, whether or not to rewrite the error traceback.
		
		Returns:
		  A tuple (node, deps):
		      * node: A Python ast node, representing the converted code.
		      * deps: A set of strings, the fully qualified names of entity
		          dependencies that this node has.
	**/
	static public function node_to_graph(node:Dynamic, context:Dynamic, ?rewrite_errors:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}