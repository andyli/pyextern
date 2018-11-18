/* This file is generated, do not edit! */
package docutils.utils.punctuation_chars;
@:pythonImport("docutils.utils.punctuation_chars") extern class Punctuation_chars_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var closers : Dynamic;
	static public var closing_delimiters : Dynamic;
	static public var delimiters : Dynamic;
	/**
		Test whether `c1` and `c2` are a matching open/close character pair.
		
		Matching open/close pairs are at the same position in
		`punctuation_chars.openers` and `punctuation_chars.closers`.
		The pairing of open/close quotes is ambiguous due to  different
		typographic conventions in different languages,
		so we test for additional matches stored in `quote_pairs`.
	**/
	static public function match_chars(c1:Dynamic, c2:Dynamic):Dynamic;
	static public var openers : Dynamic;
	static public var quote_pairs : Dynamic;
}