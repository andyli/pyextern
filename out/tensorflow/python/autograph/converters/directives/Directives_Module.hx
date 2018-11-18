/* This file is generated, do not edit! */
package tensorflow.python.autograph.converters.directives;
@:pythonImport("tensorflow.python.autograph.converters.directives") extern class Directives_Module {
	static public var ENCLOSING_LOOP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Maps AST call nodes to the actual function's arguments.
		
		Args:
		  call_node: ast.Call
		  function: Callable[..., Any], the actual function matching call_node
		Returns:
		  Dict[Text, ast.AST], mapping each of the function's argument names to
		  the respective AST node.
		Raises:
		    ValueError: if the default arguments are not correctly set
	**/
	static public function _map_args(call_node:Dynamic, _function:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function transform(node:Dynamic, ctx:Dynamic):Dynamic;
}