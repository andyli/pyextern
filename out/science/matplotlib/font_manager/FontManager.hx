/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:pythonImport("matplotlib.font_manager", "FontManager") extern class FontManager {
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
	public function ___init__(?size:Dynamic, ?weight:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?size:Dynamic, ?weight:Dynamic):Void;
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
	static public var __version__ : Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _expand_aliases(family:Dynamic):Dynamic;
	public function _findfont_cached(prop:Dynamic, fontext:Dynamic, directory:Dynamic, fallback_to_default:Dynamic, rebuild_if_missing:Dynamic, rc_params:Dynamic):Dynamic;
	/**
		Cache the properties of the font at *path* to make it available to the
		`FontManager`.  The type of font is inferred from the path suffix.
		
		Parameters
		----------
		path : str or path-like
	**/
	public function addfont(path:Dynamic):Dynamic;
	public var defaultFont : Dynamic;
	/**
		Find a font that most closely matches the given font properties.
		
		Parameters
		----------
		prop : str or `~matplotlib.font_manager.FontProperties`
		    The font properties to search for. This can be either a
		    `.FontProperties` object or a string defining a
		    `fontconfig patterns`_.
		
		fontext : {'ttf', 'afm'}, default: 'ttf'
		    The extension of the font file:
		
		    - 'ttf': TrueType and OpenType fonts (.ttf, .ttc, .otf)
		    - 'afm': Adobe Font Metrics (.afm)
		
		directory : str, optional
		    If given, only search this directory and its subdirectories.
		
		fallback_to_default : bool
		    If True, will fallback to the default font family (usually
		    "DejaVu Sans" or "Helvetica") if the first lookup hard-fails.
		
		rebuild_if_missing : bool
		    Whether to rebuild the font cache and search again if the first
		    match appears to point to a nonexisting font (i.e., the font cache
		    contains outdated entries).
		
		Returns
		-------
		str
		    The filename of the best matching font.
		
		Notes
		-----
		This performs a nearest neighbor search.  Each font is given a
		similarity score to the target font properties.  The first font with
		the highest score is returned.  If no matches below a certain
		threshold are found, the default font (usually DejaVu Sans) is
		returned.
		
		The result is cached, so subsequent lookups don't have to
		perform the O(n) nearest neighbor search.
		
		See the `W3C Cascading Style Sheet, Level 1
		<http://www.w3.org/TR/1998/REC-CSS2-19980512/>`_ documentation
		for a description of the font finding algorithm.
		
		.. _fontconfig patterns:
		   https://www.freedesktop.org/software/fontconfig/fontconfig-user.html
	**/
	public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic, ?fallback_to_default:Dynamic, ?rebuild_if_missing:Dynamic):Dynamic;
	/**
		Return the default font size.
	**/
	static public function get_default_size():Dynamic;
	/**
		Return the default font weight.
	**/
	public function get_default_weight():Dynamic;
	/**
		Return a match score between the list of font families in
		*families* and the font family name *family2*.
		
		An exact match at the head of the list returns 0.0.
		
		A match further down the list will return between 0 and 1.
		
		No match will return 1.0.
	**/
	public function score_family(families:Dynamic, family2:Dynamic):Dynamic;
	/**
		Return a match score between *size1* and *size2*.
		
		If *size2* (the size specified in the font file) is 'scalable', this
		function always returns 0.0, since any font size can be generated.
		
		Otherwise, the result is the absolute distance between *size1* and
		*size2*, normalized so that the usual range of font sizes (6pt -
		72pt) will lie between 0.0 and 1.0.
	**/
	public function score_size(size1:Dynamic, size2:Dynamic):Dynamic;
	/**
		Return a match score between *stretch1* and *stretch2*.
		
		The result is the absolute value of the difference between the
		CSS numeric values of *stretch1* and *stretch2*, normalized
		between 0.0 and 1.0.
	**/
	public function score_stretch(stretch1:Dynamic, stretch2:Dynamic):Dynamic;
	/**
		Return a match score between *style1* and *style2*.
		
		An exact match returns 0.0.
		
		A match between 'italic' and 'oblique' returns 0.1.
		
		No match returns 1.0.
	**/
	public function score_style(style1:Dynamic, style2:Dynamic):Dynamic;
	/**
		Return a match score between *variant1* and *variant2*.
		
		An exact match returns 0.0, otherwise 1.0.
	**/
	public function score_variant(variant1:Dynamic, variant2:Dynamic):Dynamic;
	/**
		Return a match score between *weight1* and *weight2*.
		
		The result is 0.0 if both weight1 and weight 2 are given as strings
		and have the same value.
		
		Otherwise, the result is the absolute value of the difference between
		the CSS numeric values of *weight1* and *weight2*, normalized between
		0.05 and 1.0.
	**/
	public function score_weight(weight1:Dynamic, weight2:Dynamic):Dynamic;
	/**
		Set the default font weight.  The initial value is 'normal'.
	**/
	public function set_default_weight(weight:Dynamic):Dynamic;
}