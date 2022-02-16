/* This file is generated, do not edit! */
package pandas.core.window.doc;
@:pythonImport("pandas.core.window.doc") extern class Doc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _shared_docs : Dynamic;
	static public var args_compat : Dynamic;
	/**
		Create numpydoc section header
	**/
	static public function create_section_header(header:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public var kwargs_compat : Dynamic;
	static public var kwargs_scipy : Dynamic;
	static public var numba_notes : Dynamic;
	static public var template_header : Dynamic;
	static public var template_returns : Dynamic;
	static public var template_see_also : Dynamic;
	static public function window_agg_numba_parameters(?version:Dynamic):Dynamic;
	static public var window_apply_parameters : Dynamic;
}