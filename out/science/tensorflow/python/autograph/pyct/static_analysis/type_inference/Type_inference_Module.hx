/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.static_analysis.type_inference;
@:pythonImport("tensorflow.python.autograph.pyct.static_analysis.type_inference") extern class Type_inference_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NO_VALUE : Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Performs type inference.
		
		Args:
		  node: ast.AST
		  source_info: transformer.SourceInfo
		  graphs: Dict[ast.FunctionDef, cfg.Graph]
		  resolver: Resolver
		
		Returns:
		  ast.AST
	**/
	static public function resolve(node:Dynamic, source_info:Dynamic, graphs:Dynamic, resolver:Dynamic):Dynamic;
}