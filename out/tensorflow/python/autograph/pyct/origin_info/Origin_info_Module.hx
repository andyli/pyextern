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
		Creates a source map between an annotated AST and the code it compiles to.
		
		Args:
		  nodes: Iterable[ast.AST, ...]
		  code: Text
		  filename: Optional[Text]
		  indices_in_code: Union[int, Iterable[int, ...]], the positions at which
		      nodes appear in code. The parser always returns a module when parsing
		      code. This argument indicates the position in that module's body at
		      which the corresponding of node should appear.
		
		Returns:
		  Dict[CodeLocation, OriginInfo], mapping locations in code to locations
		  indicated by origin annotations in node.
	**/
	static public function create_source_map(nodes:Dynamic, code:Dynamic, filename:Dynamic, indices_in_code:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds an origin information to all nodes inside the body of function.
		
		Args:
		  nodes: Union[ast.AST, Iterable[ast.AST, ...]]
		  source: Text, the source code string for the function whose body nodes will
		    be annotated.
		  function: Callable, the function that will have all nodes inside of it
		    annotation with an OriginInfo annotation with key anno.Basic.ORIGIN.  If
		    it is None then only the line numbers and column offset will be set in the
		    annotation, with the rest of the information being None.
		
		Returns:
		  A tuple of the AST node for function and a String containing its source
		  code.
	**/
	static public function resolve(nodes:Dynamic, source:Dynamic, ?_function:Dynamic):Dynamic;
}