/* This file is generated, do not edit! */
package matplotlib.textpath;
@:pythonImport("matplotlib.textpath", "TextToPath") extern class TextToPath {
	static public var DPI : Dynamic;
	static public var FONT_SCALE : Dynamic;
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
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	/**
		Return a unique id for the given font and character-code set.
	**/
	public function _get_char_id(font:Dynamic, ccode:Dynamic):Dynamic;
	/**
		Find the `FT2Font` matching font properties *prop*, with its size set.
	**/
	public function _get_font(prop:Dynamic):Dynamic;
	public function _get_hinting_flag():Dynamic;
	static public function _get_ps_font_and_encoding(texname:Dynamic):Dynamic;
	/**
		Parse mathtext string *s* and convert it to a (vertices, codes) pair.
	**/
	public function get_glyphs_mathtext(prop:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		Convert the string *s* to vertices and codes using usetex mode.
	**/
	public function get_glyphs_tex(prop:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		Convert string *s* to vertices and codes using the provided ttf font.
	**/
	public function get_glyphs_with_font(font:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		Return the cached `~.texmanager.TexManager` instance.
	**/
	public function get_texmanager():Dynamic;
	/**
		Convert text *s* to path (a tuple of vertices and codes for
		matplotlib.path.Path).
		
		Parameters
		----------
		prop : `~matplotlib.font_manager.FontProperties`
		    The font properties for the text.
		
		s : str
		    The text to be converted.
		
		ismath : {False, True, "TeX"}
		    If True, use mathtext parser.  If "TeX", use tex for rendering.
		
		Returns
		-------
		verts : list
		    A list of numpy arrays containing the x and y coordinates of the
		    vertices.
		
		codes : list
		    A list of path codes.
		
		Examples
		--------
		Create a list of vertices and codes from a text, and create a `.Path`
		from those::
		
		    from matplotlib.path import Path
		    from matplotlib.textpath import TextToPath
		    from matplotlib.font_manager import FontProperties
		
		    fp = FontProperties(family="Humor Sans", style="italic")
		    verts, codes = TextToPath().get_text_path(fp, "ABC")
		    path = Path(verts, codes, closed=False)
		
		Also see `TextPath` for a more direct way to create a path from a text.
	**/
	public function get_text_path(prop:Dynamic, s:Dynamic, ?ismath:Dynamic):Array<Dynamic>;
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic):Dynamic;
}