/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "TruetypeFonts") extern class TruetypeFonts {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	@:native("__init__")
	public function ___init__(default_font_prop:Dynamic, mathtext_backend:Dynamic):Dynamic;
	public function new(default_font_prop:Dynamic, mathtext_backend:Dynamic):Void;
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
	static public var __module__ : Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _get_font(font:Dynamic):Dynamic;
	public function _get_info(fontname:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?math:Dynamic):Dynamic;
	public function _get_offset(font:Dynamic, glyph:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	public function destroy():Dynamic;
	/**
		Get the kerning distance for font between *sym1* and *sym2*.
		
		See `~.Fonts.get_metrics` for a detailed description of the parameters.
	**/
	public function get_kern(font1:Dynamic, fontclass1:Dynamic, sym1:Dynamic, fontsize1:Dynamic, font2:Dynamic, fontclass2:Dynamic, sym2:Dynamic, fontsize2:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Parameters
		----------
		font : str
		    One of the TeX font names: "tt", "it", "rm", "cal", "sf", "bf",
		    "default", "regular", "bb", "frak", "scr".  "default" and "regular"
		    are synonyms and use the non-math font.
		font_class : str
		    One of the TeX font names (as for *font*), but **not** "bb",
		    "frak", or "scr".  This is used to combine two font classes.  The
		    only supported combination currently is ``get_metrics("frak", "bf",
		    ...)``.
		sym : str
		    A symbol in raw TeX form, e.g., "1", "x", or "\sigma".
		fontsize : float
		    Font size in points.
		dpi : float
		    Rendering dots-per-inch.
		math : bool
		    Whether we are currently in math mode or not.
		
		Returns
		-------
		object
		
		    The returned object has the following attributes (all floats,
		    except *slanted*):
		
		    - *advance*: The advance distance (in points) of the glyph.
		    - *height*: The height of the glyph in points.
		    - *width*: The width of the glyph in points.
		    - *xmin*, *xmax*, *ymin*, *ymax*: The ink rectangle of the glyph
		    - *iceberg*: The distance from the baseline to the top of the
		      glyph.  (This corresponds to TeX's definition of "height".)
		    - *slanted*: Whether the glyph should be considered as "slanted"
		      (currently used for kerning sub/superscripts).
	**/
	public function get_metrics(font:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?math:Dynamic):Dynamic;
	/**
		Get the data needed by the backend to render the math
		expression.  The return value is backend-specific.
	**/
	public function get_results(box:Dynamic):Dynamic;
	/**
		Override if your font provides multiple sizes of the same
		symbol.  Should return a list of symbols matching *sym* in
		various sizes.  The expression renderer will select the most
		appropriate size for a given situation from this list.
	**/
	public function get_sized_alternatives_for_symbol(fontname:Dynamic, sym:Dynamic):Dynamic;
	/**
		Get the line thickness that matches the given font.  Used as a
		base unit for drawing lines such as in a fraction or radical.
	**/
	public function get_underline_thickness(font:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Get the set of characters that were used in the math
		expression.  Used by backends that need to subset fonts so
		they know which glyphs to include.
	**/
	public function get_used_characters():Dynamic;
	/**
		Get the xheight for the given *font* and *fontsize*.
	**/
	public function get_xheight(fontname:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		At position (*ox*, *oy*), draw the glyph specified by the remaining
		parameters (see `get_metrics` for their detailed description).
	**/
	public function render_glyph(ox:Dynamic, oy:Dynamic, font:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Draw a filled rectangle from (*x1*, *y1*) to (*x2*, *y2*).
	**/
	public function render_rect_filled(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic):Dynamic;
	/**
		Set the size of the buffer used to render the math expression.
		Only really necessary for the bitmap backends.
	**/
	public function set_canvas_size(w:Dynamic, h:Dynamic, d:Dynamic):Dynamic;
}