/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.textpath") extern class Textpath {
	static public var KERNING_DEFAULT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var LOAD_TARGET_LIGHT : Dynamic;
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
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var text_to_path : Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		quote('abc def') -> 'abc%20def'
		
		Each part of a URL, e.g. the path info, the query, etc., has a
		different set of reserved characters that must be quoted.
		
		RFC 2396 Uniform Resource Identifiers (URI): Generic Syntax lists
		the following reserved characters.
		
		reserved    = ";" | "/" | "?" | ":" | "@" | "&" | "=" | "+" |
		              "$" | ","
		
		Each of these characters is reserved in some component of a URL,
		but not necessarily in all of them.
		
		By default, the quote function is intended for quoting the path
		section of a URL.  Thus, it will not encode '/'.  This character
		is reserved, but in typical usage the quote function is being
		called on a path where the existing slash characters are used as
		reserved characters.
		
		string and safe may be either str or bytes objects. encoding and errors
		must not be specified if string is a bytes object.
		
		The optional encoding and errors parameters specify how to deal with
		non-ASCII characters, as accepted by the str.encode method.
		By default, encoding='utf-8' (characters are encoded with UTF-8), and
		errors='strict' (unsupported characters raise a UnicodeEncodeError).
	**/
	static public function urllib_quote(string:Dynamic, ?safe:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
}