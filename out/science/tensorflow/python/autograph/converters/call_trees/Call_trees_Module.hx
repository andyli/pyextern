/* This file is generated, do not edit! */
package tensorflow.python.autograph.converters.call_trees;
@:pythonImport("tensorflow.python.autograph.converters.call_trees") extern class Call_trees_Module {
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
	static public var print_function : Dynamic;
	static public var set_trace_warned : Dynamic;
	/**
		Transform function call to the compiled counterparts.
		
		Args:
		  node: AST
		  ctx: EntityContext
		Returns:
		  A tuple (node, new_names):
		      node: The transformed AST
		      new_names: set(string), containing any newly-generated names
	**/
	static public function transform(node:Dynamic, ctx:Dynamic):Dynamic;
}