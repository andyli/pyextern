/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.ttconv") extern class Ttconv {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		convert_ttf_to_ps(filename, output, fonttype, glyph_ids)
		
		Converts the Truetype font into a Type 3 or Type 42 Postscript font, optionally subsetting the font to only the desired set of characters.
		
		filename is the path to a TTF font file.
		output is a Python file-like object with a write method that the Postscript font data will be written to.
		fonttype may be either 3 or 42.  Type 3 is a "raw Postscript" font. Type 42 is an embedded Truetype font.  Glyph subsetting is not supported for Type 42 fonts.
		glyph_ids (optional) is a list of glyph ids (integers) to keep when subsetting to a Type 3 font.  If glyph_ids is not provided or is None, then all glyphs will be included.  If any of the glyphs specified are composite glyphs, then the component glyphs will also be included.
	**/
	static public function convert_ttf_to_ps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_pdf_charprocs(filename, glyph_ids)
		
		Given a Truetype font file, returns a dictionary containing the PDF Type 3
		representation of its paths.  Useful for subsetting a Truetype font inside
		of a PDF file.
		
		filename is the path to a TTF font file.
		glyph_ids is a list of the numeric glyph ids to include.
		The return value is a dictionary where the keys are glyph names and
		the values are the stream content needed to render that glyph.  This
		is useful to generate the CharProcs dictionary in a PDF Type 3 font.
	**/
	static public function get_pdf_charprocs(args:haxe.extern.Rest<Dynamic>):Dynamic;
}