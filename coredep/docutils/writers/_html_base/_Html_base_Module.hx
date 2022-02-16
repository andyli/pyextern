/* This file is generated, do not edit! */
package docutils.writers._html_base;
@:pythonImport("docutils.writers._html_base") extern class _Html_base_Module {
	static public var PIL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return normalized string of a length or percentage unit.
		(Directive option conversion function.)
		
		Add <default> if there is no unit. Raise ValueError if the argument is not
		a positive measure of one of the valid CSS units (or without unit).
		
		>>> length_or_percentage_or_unitless('3 pt')
		'3pt'
		>>> length_or_percentage_or_unitless('3%', 'em')
		'3%'
		>>> length_or_percentage_or_unitless('3')
		'3'
		>>> length_or_percentage_or_unitless('3', 'px')
		'3px'
	**/
	static public function length_or_percentage_or_unitless(argument:Dynamic, ?_default:Dynamic):Dynamic;
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