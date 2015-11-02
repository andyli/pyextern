/* This file is generated, do not edit! */
package matplotlib.textpath;
@:pythonImport("matplotlib.textpath", "TextToPath") extern class TextToPath {
	static public var DPI : Dynamic;
	static public var FONT_SCALE : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialization
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _get_adobe_standard_encoding():Dynamic;
	/**
		Return a unique id for the given font and character-code set.
	**/
	public function _get_char_id(font:Dynamic, ccode:Dynamic):Dynamic;
	/**
		Return a unique id for the given font and character-code set (for tex).
	**/
	public function _get_char_id_ps(font:Dynamic, ccode:Dynamic):Dynamic;
	/**
		find a ttf font.
	**/
	public function _get_font(prop:Dynamic):Dynamic;
	public function _get_hinting_flag():Dynamic;
	/**
		convert the string *s* to vertices and codes by parsing it with
		mathtext.
	**/
	public function get_glyphs_mathtext(prop:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		convert the string *s* to vertices and codes using matplotlib's usetex
		mode.
	**/
	public function get_glyphs_tex(prop:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		convert the string *s* to vertices and codes using the
		provided ttf font.
	**/
	public function get_glyphs_with_font(font:Dynamic, s:Dynamic, ?glyph_map:Dynamic, ?return_new_glyphs_only:Dynamic):Dynamic;
	/**
		return the :class:`matplotlib.texmanager.TexManager` instance
	**/
	public function get_texmanager():Dynamic;
	/**
		convert text *s* to path (a tuple of vertices and codes for
		matplotlib.path.Path).
		
		*prop*
		  font property
		
		*s*
		  text to be converted
		
		*usetex*
		  If True, use matplotlib usetex mode.
		
		*ismath*
		  If True, use mathtext parser. Effective only if usetex == False.
	**/
	public function get_text_path(prop:Dynamic, s:Dynamic, ?ismath:Dynamic, ?usetex:Dynamic):Dynamic;
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic):Dynamic;
	/**
		convert the ft2font glyph to vertices and codes.
	**/
	public function glyph_to_path(font:Dynamic, ?currx:Dynamic):Dynamic;
}