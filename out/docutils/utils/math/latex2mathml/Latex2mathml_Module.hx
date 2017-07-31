/* This file is generated, do not edit! */
package docutils.utils.math.latex2mathml;
@:pythonImport("docutils.utils.math.latex2mathml") extern class Latex2mathml_Module {
	static public var Greek : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var functions : Dynamic;
	static public function handle_keyword(name:Dynamic, node:Dynamic, string:Dynamic):Dynamic;
	static public var letters : Dynamic;
	static public var mathbb : Dynamic;
	static public var mathscr : Dynamic;
	static public var negatables : Dynamic;
	static public var over : Dynamic;
	/**
		parse_latex_math(string [,inline]) -> MathML-tree
		
		Returns a MathML-tree parsed from string.  inline=True is for
		inline math and inline=False is for displayed math.
		
		tree is the whole tree and node is the current element.
	**/
	static public function parse_latex_math(string:Dynamic, ?_inline:Dynamic):Dynamic;
	static public var special : Dynamic;
	static public var sumintprod : Dynamic;
	/**
		Return string with MathML code corresponding to `tex_math`. 
		
		`inline`=True is for inline math and `inline`=False for displayed math.
	**/
	static public function tex2mathml(tex_math:Dynamic, ?_inline:Dynamic):Dynamic;
}