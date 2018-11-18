/* This file is generated, do not edit! */
package matplotlib.ft2font;
@:pythonImport("matplotlib.ft2font", "FT2Font") extern class FT2Font {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		clear()
		
		Clear all the glyphs, reset for a new set_text
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var descender : Dynamic;
	/**
		draw_glyph_to_bitmap(bitmap, x, y, glyph)
		
		Draw a single glyph to the bitmap at pixel locations x,y
		Note it is your responsibility to set up the bitmap manually
		with set_bitmap_size(w,h) before this call is made.
		
		If you want automatic layout, use set_text in combinations with
		draw_glyphs_to_bitmap.  This function is intended for people who
		want to render individual glyphs at precise locations, eg, a
		a glyph returned by load_char
	**/
	public function draw_glyph_to_bitmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		draw_glyphs_to_bitmap()
		
		Draw the glyphs that were loaded by set_text to the bitmap
		The bitmap size will be automatically set to include the glyphs
	**/
	public function draw_glyphs_to_bitmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var face_flags : Dynamic;
	public var family_name : Dynamic;
	public var fname : Dynamic;
	/**
		x, y = get_bitmap_offset()
		
		Get the offset in 26.6 subpixels for the bitmap if ink hangs left or below (0, 0).
		Since matplotlib only supports left-to-right text, y is always 0.
	**/
	public function get_bitmap_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_char_index()
		
		Given a character code, returns a glyph index.
	**/
	public function get_char_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_charmap()
		
		Returns a dictionary that maps the character codes of the selected charmap
		(Unicode by default) to their corresponding glyph indices.
	**/
	public function get_charmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d = get_descent()
		
		Get the descent of the current string set by set_text in 26.6 subpixels.
		The rotation of the string is accounted for.  To get the descent
		in pixels, divide this value by 64.
	**/
	public function get_descent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_glyph_name(index)
		
		Retrieves the ASCII name of a given glyph in a face.
	**/
	public function get_glyph_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path()
		
		Get the path data from the currently loaded glyph as a tuple of vertices, codes.
	**/
	public function get_image(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dx = get_kerning(left, right, mode)
		
		Get the kerning between left char and right glyph indices
		mode is a kerning mode constant
		  KERNING_DEFAULT  - Return scaled and grid-fitted kerning distances
		  KERNING_UNFITTED - Return scaled but un-grid-fitted kerning distances
		  KERNING_UNSCALED - Return the kerning vector in original font units
	**/
	public function get_kerning(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_name_index(name)
		
		Returns the glyph index of a given glyph name.
		The glyph index 0 means `undefined character code'.
	**/
	public function get_name_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_num_glyphs()
		
		Return the number of loaded glyphs
	**/
	public function get_num_glyphs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path()
		
		Get the path data from the currently loaded glyph as a tuple of vertices, codes.
	**/
	public function get_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_ps_font_info()
		
		Return the information in the PS Font Info structure.
	**/
	public function get_ps_font_info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_sfnt(name)
		
		Get all values from the SFNT names table.  Result is a dictionary whosekey is the platform-ID, ISO-encoding-scheme, language-code, anddescription.
	**/
	public function get_sfnt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_sfnt_table(name)
		
		Return one of the following SFNT tables: head, maxp, OS/2, hhea, vhea, post, or pclt.
	**/
	public function get_sfnt_table(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w, h = get_width_height()
		
		Get the width and height in 26.6 subpixels of the current string set by set_text
		The rotation of the string is accounted for.  To get width and height
		in pixels, divide these values by 64
	**/
	public function get_width_height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_xys()
		
		Get the xy locations of the current glyphs
	**/
	public function get_xys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var height : Dynamic;
	/**
		load_char(charcode, flags=LOAD_FORCE_AUTOHINT)
		
		Load character with charcode in current fontfile and set glyph.
		The flags argument can be a bitwise-or of the LOAD_XXX constants.
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
	public function load_char(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		load_glyph(glyphindex, flags=LOAD_FORCE_AUTOHINT)
		
		Load character with glyphindex in current fontfile and set glyph.
		The flags argument can be a bitwise-or of the LOAD_XXX constants.
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
	public function load_glyph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var max_advance_height : Dynamic;
	public var max_advance_width : Dynamic;
	public var num_charmaps : Dynamic;
	public var num_faces : Dynamic;
	public var num_fixed_sizes : Dynamic;
	public var num_glyphs : Dynamic;
	public var postscript_name : Dynamic;
	public var scalable : Dynamic;
	/**
		select_charmap(i)
		
		select charmap i where i is one of the FT_Encoding number
	**/
	public function select_charmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_charmap(i)
		
		Make the i-th charmap current
	**/
	public function set_charmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_size(ptsize, dpi)
		
		Set the point size and dpi of the text.
	**/
	public function set_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_text(s, angle)
		
		Set the text string and angle.
		You must call this before draw_glyphs_to_bitmap
		A sequence of x,y positions is returned
	**/
	public function set_text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var style_flags : Dynamic;
	public var style_name : Dynamic;
	public var underline_position : Dynamic;
	public var underline_thickness : Dynamic;
	public var units_per_EM : Dynamic;
}