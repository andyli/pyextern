/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.match;
@:pythonImport("tensorflow.contrib.graph_editor.match") extern class Match_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert to a OpMatcher instance.
	**/
	static public function _make_graph_match(graph_match:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Check if an op is of the given type.
		
		Args:
		  op_types: tuple of strings containing the types to check against.
		    For instance: ("Add", "Const")
		  op: the operation to check (or None).
		Returns:
		  if op is not None, return True if the op is of the correct type.
		  if op is None, return a lambda function which does the type checking.
	**/
	static public function op_type(op_types:Dynamic, ?op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}