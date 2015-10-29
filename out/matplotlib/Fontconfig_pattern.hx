/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.fontconfig_pattern") extern class Fontconfig_pattern {
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
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function family_escape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	static public var family_punc : Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function family_unescape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Given a dictionary of key/value pairs, generates a fontconfig
		pattern string.
	**/
	static public function generate_fontconfig_pattern(d:Dynamic):Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		:class:`font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function value_escape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	static public var value_punc : Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function value_unescape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
}