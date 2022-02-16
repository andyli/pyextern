/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.static_analysis.liveness;
@:pythonImport("tensorflow.python.autograph.pyct.static_analysis.liveness") extern class Liveness_Module {
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
	/**
		Resolves the live symbols at the exit of control flow statements.
		
		Args:
		  node: ast.AST
		  source_info: transformer.SourceInfo
		  graphs: Dict[ast.FunctionDef, cfg.Graph]
		  include_annotations: Bool, whether type annotations should be included in
		    the analysis.
		Returns:
		  ast.AST
	**/
	static public function resolve(node:Dynamic, source_info:Dynamic, graphs:Dynamic, ?include_annotations:Dynamic):Dynamic;
}