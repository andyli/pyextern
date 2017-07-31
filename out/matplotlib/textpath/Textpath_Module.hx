/* This file is generated, do not edit! */
package matplotlib.textpath;
@:pythonImport("matplotlib.textpath") extern class Textpath_Module {
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
	/**
		FT2Font(ttffile)
		
		Create a new FT2Font object
		The following global font attributes are defined:
		  num_faces              number of faces in file
		  face_flags             face flags  (int type); see the ft2font constants
		  style_flags            style flags  (int type); see the ft2font constants
		  num_glyphs             number of glyphs in the face
		  family_name            face family name
		  style_name             face syle name
		  num_fixed_sizes        number of bitmap in the face
		  scalable               face is scalable
		
		The following are available, if scalable is true:
		  bbox                   face global bounding box (xmin, ymin, xmax, ymax)
		  units_per_EM           number of font units covered by the EM
		  ascender               ascender in 26.6 units
		  descender              descender in 26.6 units
		  height                 height in 26.6 units; used to compute a default
		                         line spacing (baseline-to-baseline distance)
		  max_advance_width      maximum horizontal cursor advance for all glyphs
		  max_advance_height     same for vertical layout
		  underline_position     vertical position of the underline bar
		  underline_thickness    vertical thickness of the underline
		  postscript_name        PostScript name of the font
	**/
	static public function get_font(args:haxe.extern.Rest<Dynamic>):Dynamic;
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