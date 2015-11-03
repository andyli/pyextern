/* This file is generated, do not edit! */
package docutils.utils.math;
@:pythonImport("docutils.utils.math") extern class Math_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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