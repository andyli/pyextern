/* This file is generated, do not edit! */
package docutils.writers.latex2e;
@:pythonImport("docutils.writers.latex2e") extern class Latex2e_Module {
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
	static public var _du_sty : Dynamic;
	static public function _read_block(fp:Dynamic):Dynamic;
	static public var block_name : Dynamic;
	static public var definitions : Dynamic;
	static public var division : Dynamic;
	static public var fp : Dynamic;
	static public var line : Dynamic;
	/**
		Return the right math environment to display `code`.
		
		The test simply looks for line-breaks (``\``) outside environments.
		Multi-line formulae are set with ``align``, one-liners with
		``equation``.
		
		If `numbered` evaluates to ``False``, the "starred" versions are used
		to suppress numbering.
	**/
	static public function pick_math_environment(code:Dynamic, ?numbered:Dynamic):Dynamic;
	/**
		OS-specific conversion from a relative URL of the 'file' scheme
		to a file system path; not recommended for general use.
	**/
	static public function url2pathname(pathname:Dynamic):Dynamic;
}