/* This file is generated, do not edit! */
package docutils.statemachine;
@:pythonImport("docutils.statemachine") extern class Statemachine_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return exception information:
		
		- the exception's class name;
		- the exception object;
		- the name of the file containing the offending code;
		- the line number of the offending code;
		- the function name of the offending code.
	**/
	static public function _exception_data():Dynamic;
	/**
		Return a list of one-line strings with tabs expanded, no newlines, and
		trailing whitespace stripped.
		
		Each tab is expanded with between 1 and `tab_width` spaces, so that the
		next character's index becomes a multiple of `tab_width` (8 by default).
		
		Parameters:
		
		- `astring`: a multi-line string.
		- `tab_width`: the number of columns between tab stops.
		- `convert_whitespace`: convert form feeds and vertical tabs to spaces?
	**/
	static public function string2lines(astring:Dynamic, ?tab_width:Dynamic, ?convert_whitespace:Dynamic, ?whitespace:Dynamic):Dynamic;
}