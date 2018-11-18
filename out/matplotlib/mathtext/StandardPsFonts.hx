/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "StandardPsFonts") extern class StandardPsFonts {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		*default_font_prop*: A
		:class:`~matplotlib.font_manager.FontProperties` object to use
		for the default non-math font, or the base font for Unicode
		(generic) font rendering.
		
		*mathtext_backend*: A subclass of :class:`MathTextBackend`
		used to delegate the actual rendering.
	**/
	@:native("__init__")
	public function ___init__(default_font_prop:Dynamic):Dynamic;
	/**
		*default_font_prop*: A
		:class:`~matplotlib.font_manager.FontProperties` object to use
		for the default non-math font, or the base font for Unicode
		(generic) font rendering.
		
		*mathtext_backend*: A subclass of :class:`MathTextBackend`
		used to delegate the actual rendering.
	**/
	public function new(default_font_prop:Dynamic):Void;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _get_font(font:Dynamic):Dynamic;
	/**
		load the cmfont, metrics and glyph with caching
	**/
	public function _get_info(fontname:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?math:Dynamic):Dynamic;
	static public var basepath : Dynamic;
	/**
		Fix any cyclical references before the object is about
		to be destroyed.
	**/
	public function destroy():Dynamic;
	static public var fontmap : Dynamic;
	/**
		Get the kerning distance for font between *sym1* and *sym2*.
		
		*fontX*: one of the TeX font names::
		
		  tt, it, rm, cal, sf, bf or default/regular (non-math)
		
		*fontclassX*: TODO
		
		*symX*: a symbol in raw TeX form. e.g., '1', 'x' or '\sigma'
		
		*fontsizeX*: the fontsize in points
		
		*dpi*: the current dots-per-inch
	**/
	public function get_kern(font1:Dynamic, fontclass1:Dynamic, sym1:Dynamic, fontsize1:Dynamic, font2:Dynamic, fontclass2:Dynamic, sym2:Dynamic, fontsize2:Dynamic, dpi:Dynamic):Dynamic;
	/**
		*font*: one of the TeX font names::
		
		  tt, it, rm, cal, sf, bf or default/regular (non-math)
		
		*font_class*: TODO
		
		*sym*:  a symbol in raw TeX form. e.g., '1', 'x' or '\sigma'
		
		*fontsize*: font size in points
		
		*dpi*: current dots-per-inch
		
		*math*: whether sym is a math character
		
		Returns an object with the following attributes:
		
		  - *advance*: The advance distance (in points) of the glyph.
		
		  - *height*: The height of the glyph in points.
		
		  - *width*: The width of the glyph in points.
		
		  - *xmin*, *xmax*, *ymin*, *ymax* - the ink rectangle of the glyph
		
		  - *iceberg* - the distance from the baseline to the top of
		    the glyph.  This corresponds to TeX's definition of
		    "height".
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
	public function get_xheight(font:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Draw a glyph at
		
		  - *ox*, *oy*: position
		
		  - *facename*: One of the TeX face names
		
		  - *font_class*:
		
		  - *sym*: TeX symbol name or single character
		
		  - *fontsize*: fontsize in points
		
		  - *dpi*: The dpi to draw at.
	**/
	public function render_glyph(ox:Dynamic, oy:Dynamic, facename:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
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