/* This file is generated, do not edit! */
package matplotlib.ft2font;
@:pythonImport("matplotlib.ft2font", "FT2Font") extern class FT2Font {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var ascender : Dynamic;
	public var bbox : Dynamic;
	/**
		Clear all the glyphs, reset for a new call to `.set_text`.
	**/
	static public function clear():Dynamic;
	public var descender : Dynamic;
	/**
		Draw a single glyph to the bitmap at pixel locations x, y
		Note it is your responsibility to set up the bitmap manually
		with ``set_bitmap_size(w, h)`` before this call is made.
		
		If you want automatic layout, use `.set_text` in combinations with
		`.draw_glyphs_to_bitmap`.  This function is instead intended for people
		who want to render individual glyphs (e.g., returned by `.load_char`)
		at precise locations.
	**/
	static public function draw_glyph_to_bitmap(bitmap:Dynamic, x:Dynamic, y:Dynamic, glyph:Dynamic):Dynamic;
	/**
		Draw the glyphs that were loaded by `.set_text` to the bitmap.
		The bitmap size will be automatically set to include the glyphs.
	**/
	static public function draw_glyphs_to_bitmap():Dynamic;
	public var face_flags : Dynamic;
	public var family_name : Dynamic;
	public var fname : Dynamic;
	/**
		Get the (x, y) offset in 26.6 subpixels for the bitmap if ink hangs left or below (0, 0).
		Since Matplotlib only supports left-to-right text, y is always 0.
	**/
	static public function get_bitmap_offset():Dynamic;
	/**
		Return the glyph index corresponding to a character *codepoint*.
	**/
	static public function get_char_index(codepoint:Dynamic):Dynamic;
	/**
		Return a dict that maps the character codes of the selected charmap
		(Unicode by default) to their corresponding glyph indices.
	**/
	static public function get_charmap():Dynamic;
	/**
		Get the descent in 26.6 subpixels of the current string set by `.set_text`.
		The rotation of the string is accounted for.  To get the descent
		in pixels, divide this value by 64.
	**/
	static public function get_descent():Dynamic;
	/**
		Retrieve the ASCII name of a given glyph *index* in a face.
		
		Due to Matplotlib's internal design, for fonts that do not contain glyph
		names (per FT_FACE_FLAG_GLYPH_NAMES), this returns a made-up name which
		does *not* roundtrip through `.get_name_index`.
	**/
	static public function get_glyph_name(index:Dynamic):Dynamic;
	/**
		Return the underlying image buffer for this font object.
	**/
	static public function get_image():Dynamic;
	/**
		Get the kerning between *left* and *right* glyph indices.
		*mode* is a kerning mode constant:
		  KERNING_DEFAULT  - Return scaled and grid-fitted kerning distances
		  KERNING_UNFITTED - Return scaled but un-grid-fitted kerning distances
		  KERNING_UNSCALED - Return the kerning vector in original font units
	**/
	static public function get_kerning(left:Dynamic, right:Dynamic, mode:Dynamic):Dynamic;
	/**
		Return the glyph index of a given glyph *name*.
		The glyph index 0 means 'undefined character code'.
	**/
	static public function get_name_index(name:Dynamic):Dynamic;
	/**
		Return the number of loaded glyphs.
	**/
	static public function get_num_glyphs():Dynamic;
	/**
		Get the path data from the currently loaded glyph as a tuple of vertices, codes.
	**/
	static public function get_path():Dynamic;
	/**
		Return the information in the PS Font Info structure.
	**/
	static public function get_ps_font_info():Dynamic;
	/**
		Load the entire SFNT names table, as a dict whose keys are
		(platform-ID, ISO-encoding-scheme, language-code, and description)
		tuples.
	**/
	static public function get_sfnt():Dynamic;
	/**
		Return one of the following SFNT tables: head, maxp, OS/2, hhea, vhea, post, or pclt.
	**/
	static public function get_sfnt_table(name:Dynamic):Dynamic;
	/**
		Get the width and height in 26.6 subpixels of the current string set by `.set_text`.
		The rotation of the string is accounted for.  To get width and height
		in pixels, divide these values by 64.
	**/
	static public function get_width_height():Dynamic;
	/**
		Get the xy locations of the current glyphs.
	**/
	static public function get_xys():Dynamic;
	public var height : Dynamic;
	/**
		Load character with *charcode* in current fontfile and set glyph.
		*flags* can be a bitwise-or of the LOAD_XXX constants;
		the default value is LOAD_FORCE_AUTOHINT.
		Return value is a Glyph object, with attributes
		  width          # glyph width
		  height         # glyph height
		  bbox           # the glyph bbox (xmin, ymin, xmax, ymax)
		  horiBearingX   # left side bearing in horizontal layouts
		  horiBearingY   # top side bearing in horizontal layouts
		  horiAdvance    # advance width for horizontal layout
		  vertBearingX   # left side bearing in vertical layouts
		  vertBearingY   # top side bearing in vertical layouts
		  vertAdvance    # advance height for vertical layout
	**/
	static public function load_char(charcode:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Load character with *glyphindex* in current fontfile and set glyph.
		*flags* can be a bitwise-or of the LOAD_XXX constants;
		the default value is LOAD_FORCE_AUTOHINT.
		Return value is a Glyph object, with attributes
		  width          # glyph width
		  height         # glyph height
		  bbox           # the glyph bbox (xmin, ymin, xmax, ymax)
		  horiBearingX   # left side bearing in horizontal layouts
		  horiBearingY   # top side bearing in horizontal layouts
		  horiAdvance    # advance width for horizontal layout
		  vertBearingX   # left side bearing in vertical layouts
		  vertBearingY   # top side bearing in vertical layouts
		  vertAdvance    # advance height for vertical layout
	**/
	static public function load_glyph(glyphindex:Dynamic, ?flags:Dynamic):Dynamic;
	public var max_advance_height : Dynamic;
	public var max_advance_width : Dynamic;
	public var num_charmaps : Dynamic;
	public var num_faces : Dynamic;
	public var num_fixed_sizes : Dynamic;
	public var num_glyphs : Dynamic;
	public var postscript_name : Dynamic;
	public var scalable : Dynamic;
	/**
		Select a charmap by its FT_Encoding number.
	**/
	static public function select_charmap(i:Dynamic):Dynamic;
	/**
		Make the i-th charmap current.
	**/
	static public function set_charmap(i:Dynamic):Dynamic;
	/**
		Set the point size and dpi of the text.
	**/
	static public function set_size(ptsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Set the text *string* and *angle*.
		*flags* can be a bitwise-or of the LOAD_XXX constants;
		the default value is LOAD_FORCE_AUTOHINT.
		You must call this before `.draw_glyphs_to_bitmap`.
		A sequence of x,y positions is returned.
	**/
	static public function set_text(string:Dynamic, angle:Dynamic, ?flags:Dynamic):Dynamic;
	public var style_flags : Dynamic;
	public var style_name : Dynamic;
	public var underline_position : Dynamic;
	public var underline_thickness : Dynamic;
	public var units_per_EM : Dynamic;
}