/* This file is generated, do not edit! */
package docutils.writers.html4css1;
@:pythonImport("docutils.writers.html4css1") extern class Html4css1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		parse_latex_math(string [,inline]) -> MathML-tree
		
		Returns a MathML-tree parsed from string.  inline=True is for
		inline math and inline=False is for displayed math.
		
		tree is the whole tree and node is the current element.
	**/
	static public function parse_latex_math(string:Dynamic, ?_inline:Dynamic):Dynamic;
	/**
		Return the right math environment to display `code`.
		
		The test simply looks for line-breaks (``\``) outside environments.
		Multi-line formulae are set with ``align``, one-liners with
		``equation``.
		
		If `numbered` evaluates to ``False``, the "starred" versions are used
		to suppress numbering.
	**/
	static public function pick_math_environment(code:Dynamic, ?numbered:Dynamic):Dynamic;
}