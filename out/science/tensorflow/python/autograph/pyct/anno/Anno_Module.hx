/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.anno;
@:pythonImport("tensorflow.python.autograph.pyct.anno") extern class Anno_Module {
	static public var FAIL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function copyanno(from_node:Dynamic, to_node:Dynamic, key:Dynamic, ?field_name:Dynamic):Dynamic;
	static public function delanno(node:Dynamic, key:Dynamic, ?field_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Recursively copies annotations in an AST tree.
		
		Args:
		  node: ast.AST
		  copy_map: Dict[Hashable, Hashable], maps a source anno key to a destination
		      key. All annotations with the source key will be copied to identical
		      annotations with the destination key.
		  field_name: str
	**/
	static public function dup(node:Dynamic, copy_map:Dynamic, ?field_name:Dynamic):Dynamic;
	static public function getanno(node:Dynamic, key:Dynamic, ?_default:Dynamic, ?field_name:Dynamic):Dynamic;
	static public function hasanno(node:Dynamic, key:Dynamic, ?field_name:Dynamic):Dynamic;
	static public function keys(node:Dynamic, ?field_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function setanno(node:Dynamic, key:Dynamic, value:Dynamic, ?field_name:Dynamic):Dynamic;
}