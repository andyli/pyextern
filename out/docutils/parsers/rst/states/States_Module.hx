/* This file is generated, do not edit! */
package docutils.parsers.rst.states;
@:pythonImport("docutils.parsers.rst.states") extern class States_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _loweralpha_to_int(s:Dynamic, ?_zero:Dynamic):Dynamic;
	static public function _lowerroman_to_int(s:Dynamic):Dynamic;
	static public function _upperalpha_to_int(s:Dynamic, ?_zero:Dynamic):Dynamic;
	/**
		Build, compile and return a regular expression based on `definition`.
		
		:Parameter: `definition`: a 4-tuple (group name, prefix, suffix, parts),
		    where "parts" is a list of regular expressions and/or regular
		    expression definitions to be joined into an or-group.
	**/
	static public function build_regexp(definition:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Return the column width of text.
		
		Correct ``len(text)`` for wide East Asian and combining Unicode chars.
	**/
	static public function column_width(text:Dynamic):Dynamic;
	/**
		Return a string with escape-backslashes converted to nulls.
	**/
	static public function escape2null(text:Dynamic):Dynamic;
	/**
		Return a case- and whitespace-normalized name.
	**/
	static public function normalize_name(name:Dynamic):Dynamic;
	static public var state_classes : Dynamic;
	/**
		Return a string with nulls removed or restored to backslashes.
		Backslash-escaped spaces are also removed.
	**/
	static public function unescape(text:Dynamic, ?restore_backslashes:Dynamic):Dynamic;
	/**
		Return a whitespace-normalized name.
	**/
	static public function whitespace_normalize_name(name:Dynamic):Dynamic;
}